package com.onyx.android.sdk.universal.editor.action.handler;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.LocaleUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWRPointerEvent;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.hwr.utils.HWRLogUtils;
import com.onyx.android.sdk.hwr.utils.HWRStrokeUtils;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.handler.HWRGestureHandleAction;
import com.onyx.android.sdk.universal.editor.action.hwr.StartHWRRecognitionAction;
import com.onyx.android.sdk.universal.editor.bean.HWRConvertContext;
import com.onyx.android.sdk.universal.editor.bean.HWRRecognizeState;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b/\u00100J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\b\u0010\u000b\u001a\u00020\u0007H\u0002J\b\u0010\f\u001a\u00020\u0007H\u0002J\u001c\u0010\u0011\u001a\u00020\u00072\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0002J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u000eH\u0002J\b\u0010\u0014\u001a\u00020\u000eH\u0002J\b\u0010\u0016\u001a\u00020\u0015H\u0002R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u0016\u0010\u001f\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010%R(\u0010)\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r0'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010(R\u0016\u0010*\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u001e¨\u00061"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/HWRGestureHandleAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "hitTestVisibleBoxTouchData", "", "onTouchDown", "onTouchMove", "onTouchUp", "s", "r", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;", "pair", "q", "hwrInput", "p", C4921e.f26528e, "", "m", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C4921e.f26537n, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "l", "downBoxInfo", "", "J", "pointDownSystemTime", "Lcom/onyx/android/sdk/base/data/TouchPointList;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/base/data/TouchPointList;", "touchPointList", "Lio/reactivex/rxjava3/disposables/Disposable;", "Lio/reactivex/rxjava3/disposables/Disposable;", "recognitionDispose", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "rxFilter", "pointLastUpTime", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HWRGestureHandleAction extends BaseShapeHandlerAction<HWRGestureHandleAction> {

    /* renamed from: k, reason: from kotlin metadata */
    public BoxInfo virtualBoxInfo;

    /* renamed from: l, reason: from kotlin metadata */
    public BoxInfo downBoxInfo;

    /* renamed from: m, reason: from kotlin metadata */
    public long pointDownSystemTime;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public TouchPointList touchPointList;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public Disposable recognitionDispose;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public RxFilter<Pair<HWRInput, HWRConvertContext>> rxFilter;

    /* renamed from: q, reason: from kotlin metadata */
    public long pointLastUpTime;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.HWRGestureHandleAction$a */
    /* loaded from: classes8.dex */
    public static final class C9176a<T, R> implements Function {
        public C9176a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRGestureHandleAction apply(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRGestureHandleAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.HWRGestureHandleAction$b */
    /* loaded from: classes8.dex */
    public static final class C9177b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ TouchData f49179e;

        public C9177b(TouchData touchData) {
            this.f49179e = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49179e.setBoxInfo(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.HWRGestureHandleAction$c */
    /* loaded from: classes8.dex */
    public static final class C9178c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ TouchData f49181f;

        public C9178c(TouchData touchData) {
            this.f49181f = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRGestureHandleAction.this.performTouchDown(this.f49181f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.HWRGestureHandleAction$d */
    /* loaded from: classes8.dex */
    public static final class C9179d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ TouchData f49182e;

        public C9179d(TouchData touchData) {
            this.f49182e = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TouchData apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49182e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.HWRGestureHandleAction$e */
    /* loaded from: classes8.dex */
    public static final class C9180e<T> implements Consumer {
        public C9180e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRGestureHandleAction.this.virtualBoxInfo = it2.ensureBoxInfo();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.HWRGestureHandleAction$f */
    /* loaded from: classes8.dex */
    public static final class C9181f<T> implements Consumer {
        public C9181f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Pair<HWRInput, HWRConvertContext> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRGestureHandleAction.this.m38459q(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRGestureHandleAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader) {
        super(editorBundle, touchReader);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
        this.touchPointList = new TouchPointList();
        this.rxFilter = new RxFilter<>();
    }

    /* renamed from: n */
    public static final void m38455n(HWRGestureHandleAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.rxFilter.dispose();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWRGestureHandleAction> create() {
        Observable map = subscribeTouchData().doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.cfh
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                HWRGestureHandleAction.m38455n(HWRGestureHandleAction.this);
            }
        }).map(new C9176a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    @NotNull
    public Observable<TouchData> hitTestVisibleBoxTouchData(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (!touchData.isTouchDown() && this.virtualBoxInfo == null) {
            Debug.INSTANCE.m32062w(AnyKt.toSimpleNameString(this), "down missing", new Object[0]);
            Observable map = CommonEditorActionsKt.hitTestVisibleBoxObservable(this, touchData).doOnNext(new C9177b(touchData)).doOnNext(new C9178c(touchData)).map(new C9179d(touchData));
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        if (touchData.getAction() == 0) {
            Observable<TouchData> doOnNext = super.hitTestVisibleBoxTouchData(touchData).doOnNext(new C9180e());
            Intrinsics.checkNotNull(doOnNext);
            return doOnNext;
        }
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        return super.hitTestVisibleBoxTouchData(touchData, boxInfo);
    }

    /* renamed from: m */
    public final boolean m38456m() {
        int currentShapeType = EditorBundleKt.uiDrawingArgs(getEditorBundle()).getCurrentShapeType();
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        return (shapeTypes.isMarkerPenShape(currentShapeType) || shapeTypes.isTapeShape(currentShapeType)) ? false : true;
    }

    /* renamed from: o */
    public final HWRInput m38457o() {
        HWRInput hWRInput = new HWRInput();
        hWRInput.setRecognizerType(HWRRecognizerType.ML_MIXED);
        LocaleUtils localeUtils = LocaleUtils.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        hWRInput.setLang(localeUtils.getLocaleStr(US));
        hWRInput.setTextEnable(false);
        hWRInput.setShapeEnable(false);
        hWRInput.setGestureEnable(false);
        hWRInput.setIncremental(false);
        hWRInput.setResetRecognizer(true);
        BoxInfo boxInfo = this.downBoxInfo;
        BoxInfo boxInfo2 = null;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downBoxInfo");
            boxInfo = null;
        }
        hWRInput.setViewWidth(boxInfo.width());
        BoxInfo boxInfo3 = this.downBoxInfo;
        if (boxInfo3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downBoxInfo");
        } else {
            boxInfo2 = boxInfo3;
        }
        hWRInput.setViewHeight(boxInfo2.height());
        return hWRInput;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        m38461s();
        Disposable disposable = this.recognitionDispose;
        if (disposable != null) {
            disposable.dispose();
        }
        this.touchPointList.clear();
        BoxInfo ensureBoxInfo = touchData.ensureBoxInfo();
        this.downBoxInfo = ensureBoxInfo;
        if (ensureBoxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downBoxInfo");
            ensureBoxInfo = null;
        }
        this.virtualBoxInfo = ensureBoxInfo;
        this.touchPointList.add(touchData.getTouchPoint());
        this.pointDownSystemTime = System.currentTimeMillis();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchMove(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        this.virtualBoxInfo = touchData.ensureBoxInfo();
        this.touchPointList.add(touchData.getTouchPoint());
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchUp(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        this.virtualBoxInfo = touchData.ensureBoxInfo();
        this.touchPointList.add(touchData.getTouchPoint());
        m38460r();
        this.pointLastUpTime = System.currentTimeMillis();
    }

    /* renamed from: p */
    public final void m38458p(HWRInput hwrInput) {
        RectF boundingRect = this.touchPointList.getBoundingRect();
        HWRStrokeUtils hWRStrokeUtils = HWRStrokeUtils.INSTANCE;
        List<HWRPointerEvent> inputPointerEvents = hWRStrokeUtils.inputPointerEvents(this.touchPointList);
        if (boundingRect.width() < 50.0f || boundingRect.height() < 50.0f) {
            Matrix matrix = new Matrix();
            matrix.postScale(3.0f, 3.0f);
            hwrInput.setPointMatrix(matrix);
            hWRStrokeUtils.applyMatrix(inputPointerEvents, hwrInput.getPointMatrix());
        }
        CollectionKt.addAll(hwrInput.getPointerEvents(), inputPointerEvents);
    }

    /* renamed from: q */
    public final void m38459q(Pair<HWRInput, HWRConvertContext> pair) {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) pair.getSecond().getTouchPoints().getPoints());
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return;
        }
        long timestamp = touchPoint.getTimestamp();
        getEditorBundle().getAiBundle().addConvertContext(touchPoint.getTimestamp(), pair.getSecond());
        this.recognitionDispose = RxBaseAction.execute$default(new StartHWRRecognitionAction(getEditorBundle(), pair.getFirst(), pair.getSecond()), null, null, null, 7, null);
        HWRLogUtils.INSTANCE.m33400d(HWRGestureHandleAction.class, "start recognize, time = " + timestamp);
    }

    /* renamed from: r */
    public final void m38460r() {
        Object firstOrNull;
        if (m38456m() && this.pointDownSystemTime - this.pointLastUpTime >= 500 && this.touchPointList.size() >= 20) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.touchPointList.getPoints());
            TouchPoint touchPoint = (TouchPoint) firstOrNull;
            if (touchPoint == null) {
                return;
            }
            if (getEditorBundle().getAiBundle().containsConvertContext(touchPoint.getTimestamp())) {
                return;
            }
            HWRInput m38457o = m38457o();
            m38457o.setContentType(HWRValues.PART_TYPE_GESTURE);
            m38457o.setGestureEnable(true);
            HWRConvertContext hWRConvertContext = new HWRConvertContext();
            hWRConvertContext.setRecognizeState(HWRRecognizeState.RECOGNIZING);
            hWRConvertContext.setTouchPoints(new TouchPointList(this.touchPointList));
            hWRConvertContext.setPointDownSystemTime(this.pointDownSystemTime);
            m38458p(m38457o);
            this.rxFilter.onNext(new Pair<>(m38457o, hWRConvertContext));
        }
    }

    /* renamed from: s */
    public final void m38461s() {
        this.rxFilter.dispose();
        this.rxFilter.subscribeDebounce(500L, new C9181f());
    }
}
