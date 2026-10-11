package com.onyx.android.sdk.universal.editor.display;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import androidx.annotation.RequiresApi;
import androidx.lifecycle.SavedStateHandle;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.data.SearchHighlightRegion;
import com.onyx.android.sdk.base.data.SelectionRegion;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.AnimateBoxArgs;
import com.onyx.android.sdk.universal.editor.data.PageRenderNodeInfo;
import com.onyx.android.sdk.universal.editor.data.PageSliceInfo;
import com.onyx.android.sdk.universal.editor.data.ShapeFlushInfo;
import com.onyx.android.sdk.universal.editor.display.IRenderHandler;
import com.onyx.android.sdk.universal.editor.display.PageSearchHighlightRenderHandler;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.display.node.IRenderNode;
import com.onyx.android.sdk.universal.theme.UniversalThemeUtils;
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
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@RequiresApi(29)
@Metadata(m61527d1 = {"\u0000È\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010!\n\u0002\b\f\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b^\u0010_J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0012\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0002J*\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002J\u001c\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00020\u00192\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0002J\u0016\u0010\u001c\u001a\u00020\u00042\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0002J\u0010\u0010\u001f\u001a\u00020\u00042\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dJ\u0010\u0010 \u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!H\u0016J\u0018\u0010&\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010%\u001a\u00020$H\u0016J\b\u0010'\u001a\u00020\u0004H\u0016J$\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00020\u00192\u0006\u0010)\u001a\u00020(2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0016J$\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00020\u00192\u0006\u0010)\u001a\u00020(2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0016J$\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00020\u00192\u0006\u0010)\u001a\u00020(2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0016J\u001c\u00101\u001a\u0006\u0012\u0002\b\u00030\u00192\u0006\u0010.\u001a\u00020-2\u0006\u00100\u001a\u00020/H\u0016J\u0018\u00103\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00102\u001a\u00020$H\u0016J\u0012\u00106\u001a\u0004\u0018\u00010\u00062\u0006\u00105\u001a\u000204H\u0016J\u0016\u00108\u001a\u00020$2\f\u00107\u001a\b\u0012\u0004\u0012\u00020\t0\u0017H\u0016J\b\u00109\u001a\u00020$H\u0016J\u0016\u0010<\u001a\u00020\u00042\f\u0010;\u001a\b\u0012\u0004\u0012\u0002040:H\u0016J\b\u0010=\u001a\u00020\u0004H\u0016J\u0014\u0010@\u001a\u00020\u00042\f\u0010?\u001a\b\u0012\u0004\u0012\u0002040>J\b\u0010A\u001a\u000204H\u0016R\u0014\u0010E\u001a\u00020B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010DR\u0014\u0010I\u001a\u00020F8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bG\u0010HR\u0014\u0010M\u001a\u00020J8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010LR2\u0010R\u001a\u001e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u00060Nj\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u0006`O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR&\u0010W\u001a\u0014\u0012\u0004\u0012\u000204\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0T0S8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010VR\u0016\u0010Z\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0018\u0010]\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\¨\u0006`"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;", "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;", "pageNodeInfo", "q", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "searchBean", "Landroid/graphics/PorterDuffXfermode;", "j", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "i", "Landroid/graphics/Matrix;", "pageScaleMatrix", "Lcom/onyx/android/sdk/base/data/SelectionRegion;", "currentRegion", "Landroid/graphics/RectF;", "selectedRegionRect", C6999h.f39688c, "", "visibleBoxList", "Lio/reactivex/rxjava3/core/Observable;", "m", "boxList", C4921e.f26537n, "Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;", "region", "setSelectedSearchRegion", "onDraw", "Landroid/graphics/Bitmap;", "bitmap", "draw", "", "visible", "setPageVisible", "clearDisplay", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "createDisplayScalingBoxListObservable", "createDisplayScrollingBoxListObservable", "createDisplayBoxListObservable", "Landroid/view/View;", "hostView", "Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;", "args", "animateBoxChange", "forceUpdate", "updateExistsRenderNode", "", CouchFieldKey.KEY_TOC_PAGE_ID, "getPageRenderNodeInfo", "list", "addNoteSearchBeanList", "clearNoteSearchBeanList", "", "keepList", "evict", "destroy", "", SavedStateHandle.f7923g, "discardDisplayList", "getDisplayDebugString", "Landroid/graphics/Paint;", "a", "Landroid/graphics/Paint;", "highlightFillPaint", "", "b", "I", "selectedRegionHighlightColor", "", "c", "F", "roundCornerRadius", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "d", "Ljava/util/LinkedHashMap;", "pageRenderNodeMap", "", "", "e", "Ljava/util/Map;", "searchHighlightMap", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "isAnimating", C6998g.f39679a, "Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;", "selectedSearchRegion", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPageSearchHighlightRenderHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageSearchHighlightRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Canvas.kt\nandroidx/core/graphics/CanvasKt\n*L\n1#1,262:1\n526#2:263\n511#2,6:264\n526#2:270\n511#2,6:271\n215#3,2:277\n215#3,2:279\n215#3,2:296\n1#4:281\n1855#5:282\n1855#5,2:283\n1856#5:285\n1855#5,2:294\n1855#5,2:298\n121#6,8:286\n*S KotlinDebug\n*F\n+ 1 PageSearchHighlightRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler\n*L\n67#1:263\n67#1:264,6\n68#1:270\n68#1:271,6\n69#1:277,2\n80#1:279,2\n219#1:296,2\n134#1:282\n138#1:283,2\n134#1:285\n197#1:294,2\n250#1:298,2\n151#1:286,8\n*E\n"})
/* loaded from: classes8.dex */
public final class PageSearchHighlightRenderHandler implements IRenderHandler {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Paint highlightFillPaint;

    /* renamed from: b, reason: from kotlin metadata */
    public final int selectedRegionHighlightColor;

    /* renamed from: c, reason: from kotlin metadata */
    public final float roundCornerRadius;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public LinkedHashMap<String, PageRenderNodeInfo> pageRenderNodeMap;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Map<String, List<NoteSearchBean>> searchHighlightMap;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean isAnimating;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public SearchHighlightRegion selectedSearchRegion;

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageSearchHighlightRenderHandler$a */
    /* loaded from: classes8.dex */
    public static final class C10333a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ AnimateBoxArgs f51435f;

        public C10333a(AnimateBoxArgs animateBoxArgs) {
            this.f51435f = animateBoxArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull PageSearchHighlightRenderHandler it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageSearchHighlightRenderHandler.this.m40727k(this.f51435f.getAnimateBoxList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageSearchHighlightRenderHandler$b */
    /* loaded from: classes8.dex */
    public static final class C10334b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RenderNodeAnimator f51436e;

        /* renamed from: f */
        public final /* synthetic */ PageSearchHighlightRenderHandler f51437f;

        /* renamed from: g */
        public final /* synthetic */ AnimateBoxArgs f51438g;

        public C10334b(RenderNodeAnimator renderNodeAnimator, PageSearchHighlightRenderHandler pageSearchHighlightRenderHandler, AnimateBoxArgs animateBoxArgs) {
            this.f51436e = renderNodeAnimator;
            this.f51437f = pageSearchHighlightRenderHandler;
            this.f51438g = animateBoxArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull PageSearchHighlightRenderHandler it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f51436e.boxAnimationObservable(this.f51437f.pageRenderNodeMap, this.f51438g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageSearchHighlightRenderHandler$c */
    /* loaded from: classes8.dex */
    public static final class C10335c<T> implements Consumer {
        public C10335c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageSearchHighlightRenderHandler.this.isAnimating = false;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageSearchHighlightRenderHandler$d */
    /* loaded from: classes8.dex */
    public static final class C10336d<T> implements Consumer {
        public C10336d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageSearchHighlightRenderHandler.this.m40729o(it2);
        }
    }

    public PageSearchHighlightRenderHandler() {
        Paint paint = new Paint();
        paint.setColor(UniversalThemeUtils.INSTANCE.getHighlightColor());
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        ResManager resManager = ResManager.INSTANCE;
        paint.setStrokeWidth(resManager.getDimension(C7384R.dimen.dp_1));
        this.highlightFillPaint = paint;
        this.selectedRegionHighlightColor = resManager.getColor(C7106R.color.orange_percent_60);
        this.roundCornerRadius = resManager.getDimension(C7384R.dimen.dp_2);
        this.pageRenderNodeMap = new LinkedHashMap<>();
        this.searchHighlightMap = new LinkedHashMap();
    }

    /* renamed from: f */
    public static final List m40719f(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* renamed from: g */
    public static final void m40720g(PageSearchHighlightRenderHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.isAnimating = false;
    }

    /* renamed from: l */
    public static final PageRenderNodeInfo m40721l(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (PageRenderNodeInfo) tmp0.invoke(obj);
    }

    /* renamed from: n */
    public static final void m40722n(PageSearchHighlightRenderHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.log("pageCount = " + this$0.pageRenderNodeMap.size());
    }

    /* renamed from: p */
    public static final PageRenderNodeInfo m40723p(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (PageRenderNodeInfo) tmp0.invoke(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean addNoteSearchBeanList(@NotNull List<NoteSearchBean> list) {
        List listOf;
        Intrinsics.checkNotNullParameter(list, "list");
        for (Map.Entry entry : CollectionKt.toMapList(list, new Function1<NoteSearchBean, String>() { // from class: com.onyx.android.sdk.universal.editor.display.PageSearchHighlightRenderHandler$addNoteSearchBeanList$map$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull NoteSearchBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                String pageId = it2.getPageId();
                return pageId == null ? "" : pageId;
            }
        }, new Function1<NoteSearchBean, NoteSearchBean>() { // from class: com.onyx.android.sdk.universal.editor.display.PageSearchHighlightRenderHandler$addNoteSearchBeanList$map$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final NoteSearchBean invoke(@NotNull NoteSearchBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        }).entrySet()) {
            Map<String, List<NoteSearchBean>> map = this.searchHighlightMap;
            Object key = entry.getKey();
            final PageSearchHighlightRenderHandler$addNoteSearchBeanList$1$1 pageSearchHighlightRenderHandler$addNoteSearchBeanList$1$1 = new Function1<String, List<NoteSearchBean>>() { // from class: com.onyx.android.sdk.universal.editor.display.PageSearchHighlightRenderHandler$addNoteSearchBeanList$1$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final List<NoteSearchBean> invoke(@NotNull String it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new ArrayList();
                }
            };
            ((List) map.computeIfAbsent(key, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.auk
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    List m40719f;
                    m40719f = PageSearchHighlightRenderHandler.m40719f(Function1.this, obj);
                    return m40719f;
                }
            })).addAll((Collection) entry.getValue());
            listOf = CollectionsKt__CollectionsJVMKt.listOf(entry.getKey());
            discardDisplayList(listOf);
        }
        return !r7.isEmpty();
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
        Observable<?> doFinally = Observable.just(this).doOnNext(new C10333a(args)).flatMap(new C10334b(new RenderNodeAnimator(hostView), this, args)).doOnNext(new C10335c()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.ytk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PageSearchHighlightRenderHandler.m40720g(PageSearchHighlightRenderHandler.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void cancelAllRenderRequest() {
        IRenderHandler.DefaultImpls.cancelAllRenderRequest(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void clearDisplay() {
        Set<String> keySet = this.pageRenderNodeMap.keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        discardDisplayList(keySet);
        this.pageRenderNodeMap.clear();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean clearNoteSearchBeanList() {
        boolean z = this.searchHighlightMap.size() > 0;
        if (z) {
            discardDisplayList(this.searchHighlightMap.keySet());
            this.searchHighlightMap.clear();
        }
        return z;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void clearRenderer() {
        IRenderHandler.DefaultImpls.clearRenderer(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void clearShapeFlushInfo() {
        IRenderHandler.DefaultImpls.clearShapeFlushInfo(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createDisplayBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        return m40728m(visibleBoxList);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createDisplayScalingBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        return createDisplayBoxListObservable(editorBundle, visibleBoxList);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createDisplayScrollingBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        return createDisplayBoxListObservable(editorBundle, visibleBoxList);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createPreRenderBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> list) {
        return IRenderHandler.DefaultImpls.createPreRenderBoxListObservable(this, editorBundle, list);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void destroy() {
        clearDisplay();
    }

    public final void discardDisplayList(@NotNull Collection<String> keys) {
        IRenderNode renderNode;
        Intrinsics.checkNotNullParameter(keys, "keys");
        Iterator<T> it2 = keys.iterator();
        while (it2.hasNext()) {
            PageRenderNodeInfo pageRenderNodeInfo = this.pageRenderNodeMap.get((String) it2.next());
            if (pageRenderNodeInfo != null && (renderNode = pageRenderNodeInfo.getRenderNode()) != null) {
                renderNode.discardDisplayList();
            }
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public List<BoxInfo> displayBoxList() {
        return IRenderHandler.DefaultImpls.displayBoxList(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void draw(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Canvas canvas = new Canvas(bitmap);
        for (Map.Entry<String, PageRenderNodeInfo> entry : this.pageRenderNodeMap.entrySet()) {
            float translationX = entry.getValue().getRenderNode().getTranslationX();
            float translationY = entry.getValue().getRenderNode().getTranslationY();
            canvas.translate(translationX, translationY);
            m40725i(entry.getValue(), canvas);
            canvas.translate(-translationX, -translationY);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void evict(@NotNull Set<String> keepList) {
        Map map;
        BoxInfo virtualPageBoxInfo;
        IRenderNode renderNode;
        Intrinsics.checkNotNullParameter(keepList, "keepList");
        map = MapsKt__MapsKt.toMap(this.pageRenderNodeMap);
        for (Map.Entry entry : map.entrySet()) {
            if (!keepList.contains(entry.getKey())) {
                PageRenderNodeInfo remove = this.pageRenderNodeMap.remove(entry.getKey());
                if (remove != null && (renderNode = remove.getRenderNode()) != null) {
                    renderNode.discardDisplayList();
                }
                StringBuilder sb = new StringBuilder();
                sb.append("evict, ");
                sb.append((remove == null || (virtualPageBoxInfo = remove.getVirtualPageBoxInfo()) == null) ? null : virtualPageBoxInfo.getId());
                log(sb.toString());
            }
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean flushShapeToPage(@NotNull ShapeFlushInfo shapeFlushInfo) {
        return IRenderHandler.DefaultImpls.flushShapeToPage(this, shapeFlushInfo);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public String getDisplayDebugString() {
        StringBuilder sb = new StringBuilder();
        sb.append(AnyKt.toSimpleNameString(this) + '\n');
        sb.append("pageRenderNodeMap.size = " + this.pageRenderNodeMap.size() + '\n');
        sb.append("searchHighlightMap.size = " + this.searchHighlightMap.size() + '\n');
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
    public PageSliceInfo getPageSliceInfo(@NotNull String str) {
        return IRenderHandler.DefaultImpls.getPageSliceInfo(this, str);
    }

    /* renamed from: h */
    public final void m40724h(Canvas canvas, Matrix pageScaleMatrix, SelectionRegion currentRegion, RectF selectedRegionRect) {
        Matrix concat = MatrixKt.concat(currentRegion.getMatrix(), pageScaleMatrix);
        this.highlightFillPaint.setColor(RectFKt.approximatelyEqualsTo$default(currentRegion.getRect(), selectedRegionRect, 0.0f, 2, null) ? this.selectedRegionHighlightColor : UniversalThemeUtils.INSTANCE.getHighlightColor());
        int save = canvas.save();
        canvas.concat(concat);
        try {
            RectF rect = currentRegion.getRect();
            float f = this.roundCornerRadius;
            canvas.drawRoundRect(rect, f, f, this.highlightFillPaint);
        } finally {
            canvas.restoreToCount(save);
        }
    }

    /* renamed from: i */
    public final void m40725i(PageRenderNodeInfo pageNodeInfo, Canvas canvas) {
        BoxInfo virtualPageBoxInfo = pageNodeInfo.getVirtualPageBoxInfo();
        List<NoteSearchBean> list = this.searchHighlightMap.get(virtualPageBoxInfo.getId());
        if (list == null) {
            return;
        }
        if ((list.isEmpty() ? list : null) != null) {
            return;
        }
        float actualScale = virtualPageBoxInfo.getActualScale();
        Matrix matrix = new Matrix();
        matrix.postScale(actualScale, actualScale);
        for (NoteSearchBean noteSearchBean : list) {
            SearchHighlightRegion searchHighlightRegion = this.selectedSearchRegion;
            if (!Intrinsics.areEqual(searchHighlightRegion != null ? searchHighlightRegion.getPageId() : null, noteSearchBean.getPageId())) {
                searchHighlightRegion = null;
            }
            RectF rect = searchHighlightRegion != null ? searchHighlightRegion.getRect() : null;
            this.highlightFillPaint.setXfermode(m40726j(noteSearchBean));
            Iterator<T> it2 = NoteSearchBean.INSTANCE.allSortedHighlightRegions(noteSearchBean).iterator();
            while (it2.hasNext()) {
                m40724h(canvas, matrix, (SelectionRegion) it2.next(), rect);
            }
        }
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
    public boolean isEnabledPageBorder(@NotNull BoxInfo boxInfo) {
        return IRenderHandler.DefaultImpls.isEnabledPageBorder(this, boxInfo);
    }

    /* renamed from: j */
    public final PorterDuffXfermode m40726j(NoteSearchBean searchBean) {
        if (searchBean.getIsPageDarkTheme()) {
            return null;
        }
        return new PorterDuffXfermode(PorterDuff.Mode.DARKEN);
    }

    /* renamed from: k */
    public final void m40727k(List<BoxInfo> boxList) {
        evict(BoxInfoUtils.INSTANCE.toBoxIdSet(boxList));
        for (final BoxInfo boxInfo : boxList) {
            LinkedHashMap<String, PageRenderNodeInfo> linkedHashMap = this.pageRenderNodeMap;
            String id = boxInfo.getId();
            final Function1<String, PageRenderNodeInfo> function1 = new Function1<String, PageRenderNodeInfo>() { // from class: com.onyx.android.sdk.universal.editor.display.PageSearchHighlightRenderHandler$prepareDisplayBoxList$1$1
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
            linkedHashMap.computeIfAbsent(id, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.xtk
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    PageRenderNodeInfo m40721l;
                    m40721l = PageSearchHighlightRenderHandler.m40721l(Function1.this, obj);
                    return m40721l;
                }
            });
        }
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
    public boolean lowLatencyFlushToPage(@NotNull ShapeFlushInfo shapeFlushInfo) {
        return IRenderHandler.DefaultImpls.lowLatencyFlushToPage(this, shapeFlushInfo);
    }

    /* renamed from: m */
    public final Observable<BoxInfo> m40728m(List<BoxInfo> visibleBoxList) {
        evict(BoxInfoUtils.INSTANCE.toBoxIdSet(visibleBoxList));
        Observable<BoxInfo> doOnComplete = Observable.fromIterable(visibleBoxList).doOnNext(new C10336d()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.buk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PageSearchHighlightRenderHandler.m40722n(PageSearchHighlightRenderHandler.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
        return doOnComplete;
    }

    /* renamed from: o */
    public final void m40729o(final BoxInfo virtualPageBoxInfo) {
        LinkedHashMap<String, PageRenderNodeInfo> linkedHashMap = this.pageRenderNodeMap;
        String id = virtualPageBoxInfo.getId();
        final Function1<String, PageRenderNodeInfo> function1 = new Function1<String, PageRenderNodeInfo>() { // from class: com.onyx.android.sdk.universal.editor.display.PageSearchHighlightRenderHandler$refreshPage$pageNodeInfo$1
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
        PageRenderNodeInfo computeIfAbsent = linkedHashMap.computeIfAbsent(id, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.ztk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                PageRenderNodeInfo m40723p;
                m40723p = PageSearchHighlightRenderHandler.m40723p(Function1.this, obj);
                return m40723p;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        PageRenderNodeInfo pageRenderNodeInfo = computeIfAbsent;
        pageRenderNodeInfo.setVisible(true);
        if (pageRenderNodeInfo.updateRenderNodeBoxInfo(virtualPageBoxInfo)) {
            m40730q(pageRenderNodeInfo);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.searchHighlightMap.isEmpty()) {
            return;
        }
        LinkedHashMap<String, PageRenderNodeInfo> linkedHashMap = this.pageRenderNodeMap;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry<String, PageRenderNodeInfo> entry : linkedHashMap.entrySet()) {
            if (entry.getValue().getIsVisible()) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            if (this.searchHighlightMap.containsKey(((PageRenderNodeInfo) entry2.getValue()).getVirtualPageBoxInfo().getId())) {
                linkedHashMap3.put(entry2.getKey(), entry2.getValue());
            }
        }
        for (Map.Entry entry3 : linkedHashMap3.entrySet()) {
            if (!((PageRenderNodeInfo) entry3.getValue()).getRenderNode().hasDisplayList()) {
                Debug.INSTANCE.m32059w(PageSearchHighlightRenderHandler.class, "no display list, re-record page render node, rn.id = " + ((PageRenderNodeInfo) entry3.getValue()).getRenderNode().getUniqueId(), new Object[0]);
                m40730q((PageRenderNodeInfo) entry3.getValue());
            }
            ((PageRenderNodeInfo) entry3.getValue()).getRenderNode().drawInto(canvas);
        }
    }

    /* renamed from: q */
    public final void m40730q(PageRenderNodeInfo pageNodeInfo) {
        Rect renderNodePositionRect = pageNodeInfo.toRenderNodePositionRect();
        IRenderNode renderNode = pageNodeInfo.getRenderNode();
        if (!this.isAnimating) {
            renderNode.setPosition(renderNodePositionRect);
        }
        renderNode.setClipToBounds(false);
        try {
            m40725i(pageNodeInfo, renderNode.beginRecording());
        } finally {
            renderNode.endRecording();
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void removeRenderer(@NotNull String str) {
        IRenderHandler.DefaultImpls.removeRenderer(this, str);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean removeVerifyId(@NotNull Shape shape, @NotNull BoxInfo boxInfo) {
        return IRenderHandler.DefaultImpls.removeVerifyId(this, shape, boxInfo);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public int rendererSize() {
        return IRenderHandler.DefaultImpls.rendererSize(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void resizeCache(@NotNull Size size) {
        IRenderHandler.DefaultImpls.resizeCache(this, size);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void safeClearAllNoteSliceCache() {
        IRenderHandler.DefaultImpls.safeClearAllNoteSliceCache(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void safeClearAllSliceCache() {
        IRenderHandler.DefaultImpls.safeClearAllSliceCache(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void safeClearPageNoteSliceCache(@NotNull String str) {
        IRenderHandler.DefaultImpls.safeClearPageNoteSliceCache(this, str);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void setBackground(@Nullable GeoLayout geoLayout) {
        IRenderHandler.DefaultImpls.setBackground(this, geoLayout);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void setPageVisible(@NotNull BoxInfo virtualPageBoxInfo, boolean visible) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        PageRenderNodeInfo pageRenderNodeInfo = this.pageRenderNodeMap.get(virtualPageBoxInfo.getId());
        if (pageRenderNodeInfo == null || pageRenderNodeInfo.isNeedUpdateRenderNode(virtualPageBoxInfo)) {
            return;
        }
        pageRenderNodeInfo.setVisible(visible);
    }

    public final void setSelectedSearchRegion(@Nullable SearchHighlightRegion region) {
        this.selectedSearchRegion = region;
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
            m40730q(pageRenderNodeInfo);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void log(@NotNull Function0<String> function0) {
        IRenderHandler.DefaultImpls.log(this, function0);
    }
}
