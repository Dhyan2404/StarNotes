package com.onyx.android.sdk.hwr.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.hwr.data.bean.HWRCandidate;
import com.onyx.android.sdk.hwr.data.bean.HWRConvertBean;
import com.onyx.android.sdk.hwr.data.bean.HWRException;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.constant.HWRLifecycle;
import com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer;
import com.onyx.android.sdk.hwr.utils.HWRDataUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u0013\u001a\u00020\f¢\u0006\u0004\b\u001d\u0010\u001eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0014J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002R\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u001a\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/action/HWRExportAction;", "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "onFinally", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;", "hwrConvertBean", "p", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", C6998g.f39679a, "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "getInput", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "setInput", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "input", C6999h.f39688c, "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;", "getConvertBean", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;", "setConvertBean", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;)V", "convertBean", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRExportAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRExportAction.kt\ncom/onyx/android/sdk/hwr/action/HWRExportAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,58:1\n1855#2,2:59\n*S KotlinDebug\n*F\n+ 1 HWRExportAction.kt\ncom/onyx/android/sdk/hwr/action/HWRExportAction\n*L\n48#1:59,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HWRExportAction extends HWRBaseAction<HWROutput> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public HWRInput input;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public HWRConvertBean convertBean;

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRExportAction$a */
    /* loaded from: classes7.dex */
    public static final class C7412a<T, R> implements Function {
        public C7412a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWROutput apply(@NotNull HWRConvertBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRExportAction.this.m33309p(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRExportAction$b */
    /* loaded from: classes7.dex */
    public static final class C7413b<T, R> implements Function {
        public C7413b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWROutput apply(@NotNull HWRBaseAction<HWROutput> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRExportAction.this.m33308o();
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRExportAction$c */
    /* loaded from: classes7.dex */
    public static final class C7414c<T, R> implements Function {
        public C7414c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWROutput> apply(@NotNull HWROutput it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRExportAction.this.m33307n();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRExportAction(@NotNull HWRBundle bundle, @NotNull HWRInput input) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(input, "input");
        this.input = input;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWROutput> create() {
        Observable<HWROutput> flatMap = createObservable().map(new C7413b()).flatMap(new C7414c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @Nullable
    public final HWRConvertBean getConvertBean() {
        return this.convertBean;
    }

    @NotNull
    public final HWRInput getInput() {
        return this.input;
    }

    /* renamed from: n */
    public final Observable<HWROutput> m33307n() {
        Observable map = getBundle().getRecognizerManager().getActiveRecognizer().exportObservable(this.input).observeOn(getRecognizeObserveOn()).map(new C7412a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final HWROutput m33308o() {
        IHWRRecognizer activeRecognizer = getBundle().getRecognizerManager().getActiveRecognizer();
        if (activeRecognizer.lifecycle().compareTo(HWRLifecycle.OPENED) < 0 || activeRecognizer.lifecycle().compareTo(HWRLifecycle.CLEARED) > 0) {
            throw HWRException.INSTANCE.m33355of("Recognizer not Open");
        }
        return getOutput();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    public void onFinally() {
        getBundle().getRecognizerManager().getActiveRecognizer().clear();
        super.onFinally();
    }

    /* renamed from: p */
    public final HWROutput m33309p(HWRConvertBean hwrConvertBean) {
        List<HWRCandidate> candidates;
        this.convertBean = hwrConvertBean;
        if (!MatrixKt.isEmpty(this.input.getPointMatrix())) {
            HWRConvertBean hWRConvertBean = this.convertBean;
            if (hWRConvertBean != null && (candidates = hWRConvertBean.getCandidates()) != null) {
                Iterator<T> it2 = candidates.iterator();
                while (it2.hasNext()) {
                    ((HWRCandidate) it2.next()).getShapeArgs().applyMatrix(MatrixKt.invertMatrix(this.input.getPointMatrix()));
                }
            }
            getOutput().setPointMatrix(this.input.getPointMatrix());
        }
        HWRConvertBean hWRConvertBean2 = this.convertBean;
        if (hWRConvertBean2 != null) {
            HWRDataUtils.INSTANCE.convert(hWRConvertBean2, this.input);
        }
        getOutput().setRegion(this.input.getRegion());
        getOutput().setResult(this.convertBean);
        return getOutput();
    }

    public final void setConvertBean(@Nullable HWRConvertBean hWRConvertBean) {
        this.convertBean = hWRConvertBean;
    }

    public final void setInput(@NotNull HWRInput hWRInput) {
        Intrinsics.checkNotNullParameter(hWRInput, "<set-?>");
        this.input = hWRInput;
    }
}
