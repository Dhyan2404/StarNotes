package com.onyx.android.sdk.hwr.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.service.manager.HWRRecognizerManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/action/HWRSwitchAction;", "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", C6998g.f39679a, "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "getInput", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "input", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRSwitchAction extends HWRBaseAction<HWROutput> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final HWRInput input;

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRSwitchAction$a */
    /* loaded from: classes7.dex */
    public static final class C7434a<T, R> implements Function {
        public C7434a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWROutput> apply(@NotNull HWRBaseAction<HWROutput> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRSwitchAction.this.m33345n();
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRSwitchAction$b */
    /* loaded from: classes7.dex */
    public static final class C7435b<T, R> implements Function {
        public C7435b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWROutput> apply(@NotNull HWROutput it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWROpenAction(HWRSwitchAction.this.getBundle(), HWRSwitchAction.this.getInput()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRSwitchAction$c */
    /* loaded from: classes7.dex */
    public static final class C7436c<T, R> implements Function {
        public C7436c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWROutput> apply(@NotNull HWROutput it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWRInitAction(HWRSwitchAction.this.getBundle(), HWRSwitchAction.this.getInput()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRSwitchAction$d */
    /* loaded from: classes7.dex */
    public static final class C7437d<T, R> implements Function {
        public C7437d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWROutput> apply(@NotNull HWROutput it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWROpenAction(HWRSwitchAction.this.getBundle(), HWRSwitchAction.this.getInput()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRSwitchAction$e */
    /* loaded from: classes7.dex */
    public static final class C7438e<T, R> implements Function {
        public C7438e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWROutput> apply(@NotNull HWROutput it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWROpenAction(HWRSwitchAction.this.getBundle(), HWRSwitchAction.this.getInput()).build();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRSwitchAction(@NotNull HWRBundle bundle, @NotNull HWRInput input) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(input, "input");
        this.input = input;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWROutput> create() {
        Observable flatMap = createObservable().flatMap(new C7434a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final HWRInput getInput() {
        return this.input;
    }

    /* renamed from: n */
    public final Observable<HWROutput> m33345n() {
        HWRRecognizerManager recognizerManager = getBundle().getRecognizerManager();
        if (!recognizerManager.isRecognizerActivated()) {
            Observable flatMap = new HWRInitAction(getBundle(), this.input).build().flatMap(new C7435b());
            Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
            return flatMap;
        }
        if (recognizerManager.getSelectedRecognizerType() != this.input.getRecognizerType()) {
            Observable<HWROutput> flatMap2 = new HWRDestroyAction(getBundle()).build().flatMap(new C7436c()).flatMap(new C7437d());
            Intrinsics.checkNotNullExpressionValue(flatMap2, "flatMap(...)");
            return flatMap2;
        }
        if (recognizerManager.getActiveRecognizer().needReopen(this.input)) {
            Observable flatMap3 = new HWRCloseAction(getBundle()).build().flatMap(new C7438e());
            Intrinsics.checkNotNullExpressionValue(flatMap3, "flatMap(...)");
            return flatMap3;
        }
        if (recognizerManager.getActiveRecognizer().needOpen()) {
            return new HWROpenAction(getBundle(), this.input).build();
        }
        Observable<HWROutput> just = Observable.just(getOutput());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }
}
