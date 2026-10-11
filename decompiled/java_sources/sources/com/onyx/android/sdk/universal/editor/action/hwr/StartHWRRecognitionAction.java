package com.onyx.android.sdk.universal.editor.action.hwr;

import com.couchbase.lite.internal.utils.JSONUtils;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.hwr.action.HWRExportAction;
import com.onyx.android.sdk.hwr.data.bean.HWRCandidate;
import com.onyx.android.sdk.hwr.data.bean.HWRConvertBean;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.hwr.utils.HWRLogUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.bean.HWRConvertContext;
import com.onyx.android.sdk.universal.editor.bean.HWRRecognizeState;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u000f¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "hwrOutput", "l", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", GoogleApiAvailabilityLight.f29016b, "", "m", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", C6999h.f39688c, "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "hwrInput", "Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;", "i", "Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;", "convertContext", "j", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "hwrBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nStartHWRRecognitionAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartHWRRecognitionAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"})
/* loaded from: classes8.dex */
public final class StartHWRRecognitionAction extends RxBaseAppAction<StartHWRRecognitionAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final HWRInput hwrInput;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final HWRConvertContext convertContext;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final HWRBundle hwrBundle;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.StartHWRRecognitionAction$a */
    /* loaded from: classes8.dex */
    public static final class C9459a<T, R> implements Function {
        public C9459a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRBundle apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartHWRRecognitionAction.this.m39039n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.StartHWRRecognitionAction$b */
    /* loaded from: classes8.dex */
    public static final class C9460b<T, R> implements Function {
        public C9460b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRPrepareAction> apply(@NotNull HWRBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWRPrepareAction(StartHWRRecognitionAction.this.getEditorBundle(), StartHWRRecognitionAction.this.hwrInput).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.StartHWRRecognitionAction$c */
    /* loaded from: classes8.dex */
    public static final class C9461c<T, R> implements Function {
        public C9461c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWROutput> apply(@NotNull HWRPrepareAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWRExportAction(StartHWRRecognitionAction.this.hwrBundle, StartHWRRecognitionAction.this.hwrInput).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.StartHWRRecognitionAction$d */
    /* loaded from: classes8.dex */
    public static final class C9462d<T, R> implements Function {
        public C9462d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartHWRRecognitionAction> apply(@NotNull HWROutput it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartHWRRecognitionAction.this.m39037l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.StartHWRRecognitionAction$e */
    /* loaded from: classes8.dex */
    public static final class C9463e<T> implements Consumer {
        public C9463e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartHWRRecognitionAction.this.m39038m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.StartHWRRecognitionAction$f */
    /* loaded from: classes8.dex */
    public static final class C9464f<T, R> implements Function {
        public C9464f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartHWRRecognitionAction apply(@NotNull StartHWRRecognitionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartHWRRecognitionAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.StartHWRRecognitionAction$g */
    /* loaded from: classes8.dex */
    public static final class C9465g<T, R> implements Function {
        public C9465g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartHWRRecognitionAction apply(@NotNull HWRDiagramConvertAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartHWRRecognitionAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.StartHWRRecognitionAction$h */
    /* loaded from: classes8.dex */
    public static final class C9466h<T, R> implements Function {
        public C9466h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartHWRRecognitionAction apply(@NotNull HWRGestureConvertAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartHWRRecognitionAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.StartHWRRecognitionAction$i */
    /* loaded from: classes8.dex */
    public static final class C9467i<T> implements Consumer {
        public C9467i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StartHWRRecognitionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartHWRRecognitionAction.this.m39038m();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartHWRRecognitionAction(@NotNull EditorBundle editorBundle, @NotNull HWRInput hwrInput, @NotNull HWRConvertContext convertContext) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(hwrInput, "hwrInput");
        Intrinsics.checkNotNullParameter(convertContext, "convertContext");
        this.hwrInput = hwrInput;
        this.convertContext = convertContext;
        this.hwrBundle = editorBundle.getAiBundle().getHwrBundle();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartHWRRecognitionAction> create() {
        Observable<StartHWRRecognitionAction> map = Observable.just(Unit.INSTANCE).map(new C9459a()).flatMap(new C9460b()).flatMap(new C9461c()).observeOn(getMainUIScheduler()).flatMap(new C9462d()).doOnError(new C9463e()).map(new C9464f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<StartHWRRecognitionAction> m39037l(HWROutput hwrOutput) {
        List<HWRCandidate> arrayList;
        HWRLogUtils hWRLogUtils = HWRLogUtils.INSTANCE;
        StringBuilder sb = new StringBuilder();
        sb.append("onRecResult: ");
        HWRConvertBean hWRConvertBean = hwrOutput.getCom.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING java.lang.String();
        sb.append(JSONUtils.toJSON((Object) (hWRConvertBean != null ? hWRConvertBean.getCandidates() : null)));
        hWRLogUtils.m33400d(StartHWRRecognitionAction.class, sb.toString());
        if (this.convertContext.getRecognizeState() == HWRRecognizeState.IGNORED) {
            hWRLogUtils.m33400d(StartHWRRecognitionAction.class, "ignored, abort after recognize");
            Observable<StartHWRRecognitionAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        this.convertContext.setRecognizeState(HWRRecognizeState.CONVERTING);
        HWRConvertContext hWRConvertContext = this.convertContext;
        HWRConvertBean hWRConvertBean2 = hwrOutput.getCom.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING java.lang.String();
        if (hWRConvertBean2 == null || (arrayList = hWRConvertBean2.getCandidates()) == null) {
            arrayList = new ArrayList<>();
        }
        hWRConvertContext.setCandidates(arrayList);
        String contentType = this.hwrInput.getContentType();
        if (Intrinsics.areEqual(contentType, HWRValues.PART_TYPE_SHAPE)) {
            Observable map = new HWRDiagramConvertAction(getEditorBundle(), this.convertContext, this.hwrInput).build().map(new C9465g());
            Intrinsics.checkNotNull(map);
            return map;
        }
        if (Intrinsics.areEqual(contentType, HWRValues.PART_TYPE_GESTURE)) {
            Observable map2 = new HWRGestureConvertAction(getEditorBundle(), this.convertContext).build().map(new C9466h());
            Intrinsics.checkNotNull(map2);
            return map2;
        }
        Observable<StartHWRRecognitionAction> doOnNext = Observable.just(this).doOnNext(new C9467i());
        Intrinsics.checkNotNull(doOnNext);
        return doOnNext;
    }

    /* renamed from: m */
    public final void m39038m() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.convertContext.getTouchPoints().getPoints());
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return;
        }
        getEditorBundle().getAiBundle().removeConvertContext(touchPoint.getTimestamp());
    }

    /* renamed from: n */
    public final HWRBundle m39039n() {
        HWRBundle hWRBundle = this.hwrBundle;
        ClusterInfo clusterInfo = getClusterInfo();
        if (clusterInfo == null) {
            clusterInfo = new ClusterInfo();
        }
        hWRBundle.setClusterInfo(clusterInfo);
        return hWRBundle;
    }
}
