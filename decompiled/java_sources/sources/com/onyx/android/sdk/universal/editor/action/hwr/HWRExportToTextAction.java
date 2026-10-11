package com.onyx.android.sdk.universal.editor.action.hwr;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.HWRActivationConfig;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.hwr.action.HWRExportAction;
import com.onyx.android.sdk.hwr.data.bean.HWRCandidate;
import com.onyx.android.sdk.hwr.data.bean.HWRConvertBean;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.hwr.data.bean.HWRPointerEvent;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerTypeKt;
import com.onyx.android.sdk.hwr.service.manager.HWRActivationManager;
import com.onyx.android.sdk.hwr.utils.HWRStrokeUtils;
import com.onyx.android.sdk.neohwr.layout.SourcePointGroup;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.extension.ShapeKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.data.HWRArgs;
import com.onyx.android.sdk.universal.editor.events.note.ShapesConvertTextEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.util.HWREngineManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B%\u0012\u0006\u0010)\u001a\u00020(\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u001c\u001a\u00020\u0019¢\u0006\u0004\b*\u0010+J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\"\u0010\t\u001a\u00020\b2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\"\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00040\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u0004H\u0002J\u001c\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u00040\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0016\u0010\u0012\u001a\u00020\u00002\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u0004H\u0002J\"\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u00040\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u0004H\u0002R\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR3\u0010#\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00040\u001dj\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u0004`\u001e8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "charShapes", "penShapes", "", "postShapesConvertTextEvent", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "inputs", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "l", "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;", "hwrInputSegmentResult", "m", "outputs", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, C6999h.f39688c, "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "shapeList", "Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;", "i", "Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;", "hwrArgs", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "j", "Ljava/util/ArrayList;", "getHwrBlockOutputs", "()Ljava/util/ArrayList;", "hwrBlockOutputs", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", C4921e.f26537n, "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "hwrBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRExportToTextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRExportToTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,194:1\n1855#2,2:195\n1855#2:197\n1855#2,2:198\n1856#2:201\n1549#2:202\n1620#2,3:203\n1549#2:206\n1620#2,3:207\n1#3:200\n*S KotlinDebug\n*F\n+ 1 HWRExportToTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction\n*L\n149#1:195,2\n161#1:197\n162#1:198,2\n161#1:201\n179#1:202\n179#1:203,3\n180#1:206\n180#1:207,3\n*E\n"})
/* loaded from: classes8.dex */
public final class HWRExportToTextAction extends RxBaseAppAction<HWRExportToTextAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final HWRArgs hwrArgs;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<List<HWROutput>> hwrBlockOutputs;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final HWRBundle hwrBundle;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRExportToTextAction$a */
    /* loaded from: classes8.dex */
    public static final class C9427a<T> implements Consumer {

        /* renamed from: e */
        public static final C9427a<T> f49664e = new C9427a<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HWRInput it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWREngineManager.INSTANCE.initHWRInputByEngine(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRExportToTextAction$b */
    /* loaded from: classes8.dex */
    public static final class C9428b<T, R> implements Function {
        public C9428b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRPrepareAction> apply(@NotNull HWRInput it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWRPrepareAction(HWRExportToTextAction.this.getEditorBundle(), it2).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRExportToTextAction$c */
    /* loaded from: classes8.dex */
    public static final class C9429c<T, R> implements Function {
        public C9429c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWROutput> apply(@NotNull HWRPrepareAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWRExportAction(HWRExportToTextAction.this.hwrBundle, it2.getHwrInput()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRExportToTextAction$d */
    /* loaded from: classes8.dex */
    public static final class C9430d<T, R> implements Function {
        public C9430d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRInputSegmentResult> apply(@NotNull HWRExportToTextAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWRInputSegmentAction(HWRExportToTextAction.this.getEditorBundle(), HWRExportToTextAction.this.getShapeList(), HWRExportToTextAction.this.hwrArgs.getSegmentation()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRExportToTextAction$e */
    /* loaded from: classes8.dex */
    public static final class C9431e<T, R> implements Function {
        public C9431e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<HWRInput>> apply(@NotNull HWRInputSegmentResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRExportToTextAction.this.m38976m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRExportToTextAction$f */
    /* loaded from: classes8.dex */
    public static final class C9432f<T, R> implements Function {
        public C9432f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<HWRInput>> apply(@NotNull List<HWRInput> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRExportToTextAction.this.m38978o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRExportToTextAction$g */
    /* loaded from: classes8.dex */
    public static final class C9433g<T, R> implements Function {
        public C9433g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<HWROutput>> apply(@NotNull List<HWRInput> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRExportToTextAction.this.m38975l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRExportToTextAction$h */
    /* loaded from: classes8.dex */
    public static final class C9434h<T, R> implements Function {
        public C9434h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRExportToTextAction apply(@NotNull List<HWROutput> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRExportToTextAction.this.m38977n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRExportToTextAction$i */
    /* loaded from: classes8.dex */
    public static final class C9435i<T, R> implements Function {
        public C9435i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRExportToTextAction apply(@NotNull HWRExportToTextAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRExportToTextAction.this;
        }
    }

    @SourceDebugExtension({"SMAP\nHWRExportToTextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRExportToTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction$initHwrInput$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,194:1\n1855#2:195\n1855#2:196\n1855#2,2:197\n1856#2:199\n1855#2,2:200\n1856#2:202\n*S KotlinDebug\n*F\n+ 1 HWRExportToTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction$initHwrInput$1\n*L\n77#1:195\n89#1:196\n97#1:197,2\n89#1:199\n126#1:200,2\n77#1:202\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRExportToTextAction$j */
    /* loaded from: classes8.dex */
    public static final class C9436j<T, R> implements Function {
        public C9436j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<HWRInput>> apply(@NotNull HWRInputBlock block) {
            RectF rectF;
            Object first;
            Object first2;
            Object first3;
            Object first4;
            Intrinsics.checkNotNullParameter(block, "block");
            ArrayList arrayList = new ArrayList();
            List<HWRInputLine> lines = block.getLines();
            HWRExportToTextAction hWRExportToTextAction = HWRExportToTextAction.this;
            for (HWRInputLine hWRInputLine : lines) {
                HWRInput hWRInput = new HWRInput();
                hWRInput.setRecognizerType(hWRExportToTextAction.hwrArgs.getRecognizer());
                hWRInput.setContentType("Text");
                hWRInput.setShapeEnable(false);
                hWRInput.setGestureEnable(false);
                hWRInput.setTextEnable(true);
                hWRInput.setPointMatrix(hWRInputLine.getMtx());
                hWRInput.setViewWidth(hWRInputLine.getRegion().width());
                hWRInput.setViewHeight(hWRInputLine.getCharacterSize());
                long j = 0;
                for (HWRInputShape hWRInputShape : hWRInputLine.getShapes()) {
                    Date date = hWRInputShape.getSourceShape().getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
                    Intrinsics.checkNotNull(date);
                    if (j < date.getTime()) {
                        Date date2 = hWRInputShape.getSourceShape().getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
                        Intrinsics.checkNotNull(date2);
                        j = date2.getTime();
                    } else {
                        j += 200;
                    }
                    HWRPointerEvent hWRPointerEvent = null;
                    for (HWRPointerEvent hWRPointerEvent2 : hWRInputShape.getEvents()) {
                        if (hWRPointerEvent != null) {
                            j += hWRPointerEvent2.getT() - hWRPointerEvent.getT();
                        }
                        List<HWRPointerEvent> pointerEvents = hWRInput.getPointerEvents();
                        HWRPointerEvent hWRPointerEvent3 = new HWRPointerEvent(hWRPointerEvent2);
                        hWRPointerEvent3.setT(j);
                        pointerEvents.add(hWRPointerEvent3);
                        hWRPointerEvent = hWRPointerEvent2;
                    }
                    hWRInput.getSourceStrokePointGroups().add(new SourcePointGroup(null, ShapeKt.getRealPoints(hWRInputShape.getSourceShape()), hWRInputShape.getSourceShape().getStrokeColor(), hWRInputShape.getSourceShape().getFillColor(), 1, null));
                }
                hWRInput.setLang(hWRExportToTextAction.hwrArgs.getLang());
                HWRStrokeUtils.INSTANCE.applyMatrix(hWRInput.getPointerEvents(), hWRInputLine.getMtx());
                if (hWRInput.getPointerEvents().isEmpty()) {
                    rectF = new RectF();
                } else {
                    first = CollectionsKt___CollectionsKt.first((List<? extends Object>) hWRInput.getPointerEvents());
                    float x = ((HWRPointerEvent) first).getX();
                    first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) hWRInput.getPointerEvents());
                    float y = ((HWRPointerEvent) first2).getY();
                    first3 = CollectionsKt___CollectionsKt.first((List<? extends Object>) hWRInput.getPointerEvents());
                    float x2 = ((HWRPointerEvent) first3).getX();
                    first4 = CollectionsKt___CollectionsKt.first((List<? extends Object>) hWRInput.getPointerEvents());
                    rectF = new RectF(x, y, x2, ((HWRPointerEvent) first4).getY());
                    for (HWRPointerEvent hWRPointerEvent4 : hWRInput.getPointerEvents()) {
                        rectF.union(hWRPointerEvent4.getX(), hWRPointerEvent4.getY());
                    }
                }
                hWRInput.setRegion(rectF);
                arrayList.add(hWRInput);
            }
            return Observable.just(arrayList);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public HWRExportToTextAction(@NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> shapeList, @NotNull HWRArgs hwrArgs) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        Intrinsics.checkNotNullParameter(hwrArgs, "hwrArgs");
        this.shapeList = shapeList;
        this.hwrArgs = hwrArgs;
        this.hwrBlockOutputs = new ArrayList<>();
        this.hwrBundle = editorBundle.getAiBundle().getHwrBundle();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWRExportToTextAction> create() {
        Observable map = Observable.just(this).observeOn(this.hwrBundle.getHwrObserveOn()).flatMap(new C9430d()).flatMap(new C9431e()).observeOn(AccountDataBundle.INSTANCE.getDataObserveOn()).concatMap(new C9432f()).observeOn(this.hwrBundle.getHwrObserveOn()).concatMap(new C9433g()).map(new C9434h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<HWRExportToTextAction> map2 = RxjavaKt.takeLastOne(map).map(new C9435i());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    @NotNull
    public final ArrayList<List<HWROutput>> getHwrBlockOutputs() {
        return this.hwrBlockOutputs;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    /* renamed from: l */
    public final Observable<List<HWROutput>> m38975l(List<HWRInput> inputs) {
        Observable<List<HWROutput>> observable = Observable.fromIterable(inputs).doOnNext(C9427a.f49664e).concatMap(new C9428b()).concatMap(new C9429c()).toList().toObservable();
        Intrinsics.checkNotNullExpressionValue(observable, "toObservable(...)");
        return observable;
    }

    /* renamed from: m */
    public final Observable<List<HWRInput>> m38976m(HWRInputSegmentResult hwrInputSegmentResult) {
        Observable<List<HWRInput>> flatMap = Observable.fromIterable(hwrInputSegmentResult.getBlocks()).flatMap(new C9436j());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: n */
    public final HWRExportToTextAction m38977n(List<HWROutput> outputs) {
        this.hwrBlockOutputs.add(outputs);
        return this;
    }

    /* renamed from: o */
    public final Observable<List<HWRInput>> m38978o(List<HWRInput> inputs) {
        Object firstOrNull;
        List emptyList;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) inputs);
        HWRInput hWRInput = (HWRInput) firstOrNull;
        if (hWRInput == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            Observable<List<HWRInput>> just = Observable.just(emptyList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        HWRActivationConfig hWRActivationConfig = HWRActivationManager.INSTANCE.getHWRActivationConfig(HWRRecognizerTypeKt.getEngineType(hWRInput.getRecognizerType()));
        for (HWRInput hWRInput2 : inputs) {
            hWRInput2.setAppId(hWRActivationConfig.getAppId());
            hWRInput2.setProductKey(hWRActivationConfig.getProductKey());
            hWRInput2.setUserOpenId(AccountDataBundle.INSTANCE.getSyncUserId());
        }
        Observable<List<HWRInput>> just2 = Observable.just(inputs);
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        return just2;
    }

    public final void postShapesConvertTextEvent(@NotNull List<? extends Shape> charShapes, @NotNull List<? extends Shape> penShapes) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        List<HWRCandidate> candidates;
        Object first;
        Intrinsics.checkNotNullParameter(charShapes, "charShapes");
        Intrinsics.checkNotNullParameter(penShapes, "penShapes");
        String concatText = ShapeTypes.INSTANCE.concatText(charShapes);
        Iterator<T> it2 = this.hwrBlockOutputs.iterator();
        float f = Float.MIN_VALUE;
        String str = "";
        while (it2.hasNext()) {
            List<HWROutput> list = (List) it2.next();
            for (HWROutput hWROutput : list) {
                HWRConvertBean hWRConvertBean = hWROutput.getCom.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING java.lang.String();
                if (StringKt.isNotEmpty(hWRConvertBean != null ? hWRConvertBean.getLabel() : null)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    HWRConvertBean hWRConvertBean2 = hWROutput.getCom.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING java.lang.String();
                    r10 = hWRConvertBean2 != null ? hWRConvertBean2.getLabel() : null;
                    if (r10 == null) {
                        r10 = "";
                    }
                    sb.append(r10);
                    str = sb.toString();
                } else {
                    HWRConvertBean hWRConvertBean3 = hWROutput.getCom.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING java.lang.String();
                    if (CollectionKt.isNonBlank(hWRConvertBean3 != null ? hWRConvertBean3.getCandidates() : null)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(str);
                        HWRConvertBean hWRConvertBean4 = hWROutput.getCom.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING java.lang.String();
                        if (hWRConvertBean4 != null && (candidates = hWRConvertBean4.getCandidates()) != null) {
                            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) candidates);
                            HWRCandidate hWRCandidate = (HWRCandidate) first;
                            if (hWRCandidate != null) {
                                r10 = hWRCandidate.getText();
                            }
                        }
                        if (r10 == null) {
                            r10 = "";
                        }
                        sb2.append(r10);
                        str = sb2.toString();
                    }
                }
            }
            Iterator it3 = list.iterator();
            if (!it3.hasNext()) {
                throw new NoSuchElementException();
            }
            float f2 = ((HWROutput) it3.next()).getRegion().top;
            while (it3.hasNext()) {
                f2 = Math.min(f2, ((HWROutput) it3.next()).getRegion().top);
            }
            Iterator it4 = list.iterator();
            if (!it4.hasNext()) {
                throw new NoSuchElementException();
            }
            float f3 = ((HWROutput) it4.next()).getRegion().bottom;
            while (it4.hasNext()) {
                f3 = Math.max(f3, ((HWROutput) it4.next()).getRegion().bottom);
            }
            if (f2 > f) {
                str = str + '\n';
            }
            f = f3;
        }
        List<? extends Shape> list2 = charShapes;
        boolean z = false;
        if ((!list2.isEmpty()) && (!penShapes.isEmpty())) {
            RectUtils rectUtils = RectUtils.INSTANCE;
            List<? extends Shape> list3 = charShapes;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it5 = list3.iterator();
            while (it5.hasNext()) {
                arrayList.add(((Shape) it5.next()).getBoundingRect());
            }
            RectF union = rectUtils.union(arrayList);
            RectUtils rectUtils2 = RectUtils.INSTANCE;
            List<? extends Shape> list4 = penShapes;
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list4, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            Iterator<T> it6 = list4.iterator();
            while (it6.hasNext()) {
                arrayList2.add(((Shape) it6.next()).getBoundingRect());
            }
            RectF union2 = rectUtils2.union(arrayList2);
            GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
            if (new TouchPointPair(geometryUtils.center(union), geometryUtils.center(union2)).direction() > 0.0f) {
                z = true;
            }
        }
        if ((!list2.isEmpty()) && z) {
            EditorBundleKt.postEvent(getEditorBundle(), new ShapesConvertTextEvent(charShapes, concatText, TextContentType.HWR_FONT_TEXT));
        }
        if (!penShapes.isEmpty()) {
            EditorBundleKt.postEvent(getEditorBundle(), new ShapesConvertTextEvent(penShapes, str, TextContentType.HANDWRITING));
        }
        if (!(!list2.isEmpty()) || z) {
            return;
        }
        EditorBundleKt.postEvent(getEditorBundle(), new ShapesConvertTextEvent(charShapes, concatText, TextContentType.HWR_FONT_TEXT));
    }
}
