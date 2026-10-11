package com.onyx.android.sdk.universal.editor.action.handler;

import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.hwr.utils.HWRLogUtils;
import com.onyx.android.sdk.hwr.utils.HWRStrokeUtils;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.rxgesture.pen.PenStatus;
import com.onyx.android.sdk.rxgesture.pen.PenStatusBean;
import com.onyx.android.sdk.rxgesture.pen.RxPenGesture;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.hwr.StartHWRRecognitionAction;
import com.onyx.android.sdk.universal.editor.bean.HWRConvertContext;
import com.onyx.android.sdk.universal.editor.bean.HWRRecognizeState;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 -2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001-B\u0017\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020)¢\u0006\u0004\b+\u0010,J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\b\u0010\u000b\u001a\u00020\u0007H\u0016J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\b\u0010\u0016\u001a\u00020\u0013H\u0002J\b\u0010\u0018\u001a\u00020\u0017H\u0002J\b\u0010\u0019\u001a\u00020\u0017H\u0002R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u001a8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0018\u0010\u001cR\u0016\u0010!\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010 R\u0016\u0010$\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010#R\u0016\u0010&\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010%¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "hitTestVisibleBoxTouchData", "", "onTouchDown", "onTouchMove", "onTouchUp", "dispose", "r", "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;", "penStatusBean", C4921e.f26528e, "", "pointDownTime", "q", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "hwrInput", "p", GoogleApiAvailabilityLight.f29016b, "", "l", "m", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C4921e.f26537n, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "downBoxInfo", "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;", "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;", "rxPenGesture", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "touchPointList", Constants.HASIDCALL_INDEX_SIG, "overHWRMinDistance", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRContextLessHandleAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRContextLessHandleAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,209:1\n344#2,3:210\n344#2,3:213\n*S KotlinDebug\n*F\n+ 1 HWRContextLessHandleAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction\n*L\n182#1:210,3\n189#1:213,3\n*E\n"})
/* loaded from: classes8.dex */
public final class HWRContextLessHandleAction extends BaseShapeHandlerAction<HWRContextLessHandleAction> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: p */
    public static final double f49156p = DimenUtils.INSTANCE.mmToPx(ResManager.INSTANCE.getAppContext(), 1.0f);

    /* renamed from: k, reason: from kotlin metadata */
    public BoxInfo virtualBoxInfo;

    /* renamed from: l, reason: from kotlin metadata */
    public BoxInfo downBoxInfo;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public RxPenGesture rxPenGesture;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public TouchPointList touchPointList;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean overHWRMinDistance;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$Companion;", "", "()V", "HWR_MIN_DISTANCE", "", "getHWR_MIN_DISTANCE", Constants.DOUBLE_VALUE_SIG, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final double getHWR_MIN_DISTANCE() {
            return HWRContextLessHandleAction.f49156p;
        }

        public Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PenStatus.values().length];
            try {
                iArr[PenStatus.HOLDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PenStatus.f46570UP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.HWRContextLessHandleAction$a */
    /* loaded from: classes8.dex */
    public static final class C9168a<T, R> implements Function {
        public C9168a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRContextLessHandleAction> apply(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRContextLessHandleAction.this.m38445r();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.HWRContextLessHandleAction$b */
    /* loaded from: classes8.dex */
    public static final class C9169b<T, R> implements Function {
        public C9169b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRContextLessHandleAction apply(@NotNull HWRContextLessHandleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRContextLessHandleAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.HWRContextLessHandleAction$c */
    /* loaded from: classes8.dex */
    public static final class C9170c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ TouchData f49164e;

        public C9170c(TouchData touchData) {
            this.f49164e = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49164e.setBoxInfo(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.HWRContextLessHandleAction$d */
    /* loaded from: classes8.dex */
    public static final class C9171d<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ TouchData f49166f;

        public C9171d(TouchData touchData) {
            this.f49166f = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRContextLessHandleAction.this.performTouchDown(this.f49166f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.HWRContextLessHandleAction$e */
    /* loaded from: classes8.dex */
    public static final class C9172e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ TouchData f49167e;

        public C9172e(TouchData touchData) {
            this.f49167e = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TouchData apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49167e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.HWRContextLessHandleAction$f */
    /* loaded from: classes8.dex */
    public static final class C9173f<T> implements Consumer {
        public C9173f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRContextLessHandleAction.this.virtualBoxInfo = it2.ensureBoxInfo();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.HWRContextLessHandleAction$g */
    /* loaded from: classes8.dex */
    public static final class C9174g<T> implements Consumer {
        public C9174g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull PenStatusBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRContextLessHandleAction.this.m38442o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.HWRContextLessHandleAction$h */
    /* loaded from: classes8.dex */
    public static final class C9175h<T, R> implements Function {
        public C9175h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRContextLessHandleAction apply(@NotNull PenStatusBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRContextLessHandleAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRContextLessHandleAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader) {
        super(editorBundle, touchReader);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
        this.rxPenGesture = new RxPenGesture();
        this.touchPointList = new TouchPointList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWRContextLessHandleAction> create() {
        Observable<HWRContextLessHandleAction> map = subscribeTouchData().flatMap(new C9168a()).map(new C9169b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        super.dispose();
        this.rxPenGesture.dispose();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    @NotNull
    public Observable<TouchData> hitTestVisibleBoxTouchData(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (!touchData.isTouchDown() && this.virtualBoxInfo == null) {
            Debug.INSTANCE.m32062w(AnyKt.toSimpleNameString(this), "down missing", new Object[0]);
            Observable map = CommonEditorActionsKt.hitTestVisibleBoxObservable(this, touchData).doOnNext(new C9170c(touchData)).doOnNext(new C9171d(touchData)).map(new C9172e(touchData));
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        if (touchData.getAction() == 0) {
            Observable<TouchData> doOnNext = super.hitTestVisibleBoxTouchData(touchData).doOnNext(new C9173f());
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

    /* renamed from: l */
    public final boolean m38439l() {
        NoteDrawingArgs uiDrawingArgs = EditorBundleKt.uiDrawingArgs(getEditorBundle());
        if (!ShapeTypes.INSTANCE.isPenShape(uiDrawingArgs.getCurrentShapeType())) {
            return false;
        }
        PenArgs penArgs = uiDrawingArgs.getPenArgs();
        if (penArgs == null || penArgs.getSubShapeType() == -1) {
            return this.overHWRMinDistance;
        }
        return false;
    }

    /* renamed from: m */
    public final boolean m38440m() {
        Object firstOrNull;
        Object last;
        if (this.overHWRMinDistance) {
            return true;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.touchPointList.getPoints());
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return false;
        }
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) this.touchPointList.getPoints());
        boolean z = TouchPoint.INSTANCE.distance(touchPoint, (TouchPoint) last) >= f49156p;
        this.overHWRMinDistance = z;
        return z;
    }

    /* renamed from: n */
    public final HWRInput m38441n() {
        HWRInput hWRInput = new HWRInput();
        hWRInput.setRecognizerType(HWRRecognizerType.ML_MIXED);
        hWRInput.setLang("zh_CN");
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

    /* renamed from: o */
    public final void m38442o(PenStatusBean penStatusBean) {
        Object firstOrNull;
        if (m38439l()) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.touchPointList.getPoints());
            TouchPoint touchPoint = (TouchPoint) firstOrNull;
            if (touchPoint == null) {
                return;
            }
            long timestamp = touchPoint.getTimestamp();
            HWRLogUtils hWRLogUtils = HWRLogUtils.INSTANCE;
            hWRLogUtils.m33400d(HWRContextLessHandleAction.class, "penStatusBean " + penStatusBean.getPenStatus());
            getEditorBundle().getAiBundle().setPenStatusBean(penStatusBean);
            HWRInput m38441n = m38441n();
            int i = WhenMappings.$EnumSwitchMapping$0[penStatusBean.getPenStatus().ordinal()];
            if (i == 1) {
                m38441n.setContentType(HWRValues.PART_TYPE_SHAPE);
                m38441n.setShapeEnable(true);
            } else if (i == 2) {
                m38444q(timestamp);
            }
            if (StringKt.isEmpty(m38441n.getContentType()) || getEditorBundle().getAiBundle().containsConvertContext(timestamp)) {
                return;
            }
            HWRConvertContext hWRConvertContext = new HWRConvertContext();
            hWRConvertContext.setRecognizeState(HWRRecognizeState.RECOGNIZING);
            hWRConvertContext.setTouchPoints(new TouchPointList(this.touchPointList));
            getEditorBundle().getAiBundle().addConvertContext(timestamp, hWRConvertContext);
            hWRLogUtils.m33400d(HWRContextLessHandleAction.class, "start recognize, time = " + timestamp);
            m38443p(m38441n);
            RxBaseAction.execute$default(new StartHWRRecognitionAction(getEditorBundle(), m38441n, hWRConvertContext), null, null, null, 7, null);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        this.touchPointList.clear();
        this.overHWRMinDistance = false;
        BoxInfo ensureBoxInfo = touchData.ensureBoxInfo();
        this.downBoxInfo = ensureBoxInfo;
        BoxInfo boxInfo = null;
        if (ensureBoxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downBoxInfo");
            ensureBoxInfo = null;
        }
        this.virtualBoxInfo = ensureBoxInfo;
        RxPenGesture rxPenGesture = this.rxPenGesture;
        BoxInfo boxInfo2 = this.downBoxInfo;
        if (boxInfo2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downBoxInfo");
        } else {
            boxInfo = boxInfo2;
        }
        RectF visibleRect = boxInfo.getVisibleRect();
        Rect rect = new Rect();
        visibleRect.roundOut(rect);
        rxPenGesture.setLimitRect(rect);
        this.touchPointList.add(touchData.getTouchPoint());
        this.rxPenGesture.onTouchEvent(touchData);
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchMove(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        this.virtualBoxInfo = touchData.ensureBoxInfo();
        Rect limitRect = this.rxPenGesture.getLimitRect();
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        RectF visibleRect = boxInfo.getVisibleRect();
        Rect rect = new Rect();
        visibleRect.roundOut(rect);
        limitRect.union(rect);
        this.touchPointList.add(touchData.getTouchPoint());
        m38440m();
        this.rxPenGesture.onTouchEvent(touchData);
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchUp(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        this.virtualBoxInfo = touchData.ensureBoxInfo();
        this.touchPointList.add(touchData.getTouchPoint());
        this.rxPenGesture.onTouchEvent(touchData);
    }

    /* renamed from: p */
    public final void m38443p(HWRInput hwrInput) {
        CollectionKt.addAll(hwrInput.getPointerEvents(), HWRStrokeUtils.INSTANCE.inputPointerEvents(this.touchPointList));
    }

    /* renamed from: q */
    public final void m38444q(long pointDownTime) {
        if (getEditorBundle().getAiBundle().containsConvertContext(pointDownTime)) {
            boolean isStrokeConverted = getEditorBundle().getAiBundle().isStrokeConverted(pointDownTime);
            boolean abortAndRemoveConvertContext = !isStrokeConverted ? getEditorBundle().getAiBundle().abortAndRemoveConvertContext(pointDownTime) : false;
            HWRLogUtils.INSTANCE.m33400d(HWRContextLessHandleAction.class, "time = " + pointDownTime + ", isConverted = " + isStrokeConverted + ", aborted = " + abortAndRemoveConvertContext);
        }
    }

    /* renamed from: r */
    public final Observable<HWRContextLessHandleAction> m38445r() {
        Observable map = this.rxPenGesture.getObservableHolder().getObservable().doOnNext(new C9174g()).map(new C9175h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
