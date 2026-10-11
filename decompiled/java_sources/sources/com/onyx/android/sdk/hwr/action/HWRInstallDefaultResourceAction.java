package com.onyx.android.sdk.hwr.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.hwr.data.bean.HWRPointerEvent;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.bundle.HWRFactory;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0014\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\f\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "engine", "m", "l", "e", Constants.STRING_SIG, "lang", "", C6997f.f39671c, "Ljava/util/List;", "engines", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/util/List;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRInstallDefaultResourceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRInstallDefaultResourceAction.kt\ncom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,57:1\n637#2:58\n*S KotlinDebug\n*F\n+ 1 HWRInstallDefaultResourceAction.kt\ncom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction\n*L\n43#1:58\n*E\n"})
/* loaded from: classes7.dex */
public final class HWRInstallDefaultResourceAction extends RxBaseAction<HWRInstallDefaultResourceAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String lang;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<String> engines;

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRInstallDefaultResourceAction$a */
    /* loaded from: classes7.dex */
    public static final class C7421a<T, R> implements Function {
        public C7421a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRInstallDefaultResourceAction.this.m33325m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRInstallDefaultResourceAction$b */
    /* loaded from: classes7.dex */
    public static final class C7422b<T, R> implements Function {
        public C7422b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRInstallDefaultResourceAction.this.m33324l();
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRInstallDefaultResourceAction$c */
    /* loaded from: classes7.dex */
    public static final class C7423c<T, R> implements Function {
        public C7423c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRInstallDefaultResourceAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRInstallDefaultResourceAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRInstallDefaultResourceAction$d */
    /* loaded from: classes7.dex */
    public static final class C7424d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ HWRInput f42263e;

        public C7424d(HWRInput hWRInput) {
            this.f42263e = hWRInput;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWROutput> apply(@NotNull HWROutput it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWROpenAction(HWRBundle.INSTANCE.getEmpty(), this.f42263e).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRInstallDefaultResourceAction$e */
    /* loaded from: classes7.dex */
    public static final class C7425e<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ String f42264e;

        public C7425e(String str) {
            this.f42264e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRFactory.INSTANCE.getResourceDownloaderFactory().invoke(this.f42264e).installDefaultResource();
        }
    }

    public HWRInstallDefaultResourceAction(@NotNull String lang, @NotNull List<String> engines) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        Intrinsics.checkNotNullParameter(engines, "engines");
        this.lang = lang;
        this.engines = engines;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWRInstallDefaultResourceAction> create() {
        if (this.engines.isEmpty()) {
            Observable<HWRInstallDefaultResourceAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.fromIterable(this.engines).concatMap(new C7421a());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<HWRInstallDefaultResourceAction> map = RxjavaKt.takeLastOne(concatMap).flatMap(new C7422b()).map(new C7423c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<?> m33324l() {
        if (!this.engines.contains(HWRValues.ENGINE_ML)) {
            Observable<?> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        HWRInput hWRInput = new HWRInput();
        hWRInput.setTextEnable(true);
        hWRInput.setShapeEnable(true);
        hWRInput.setGestureEnable(false);
        hWRInput.setLang(this.lang);
        hWRInput.setRecognizerType(HWRRecognizerType.ML_MIXED);
        hWRInput.getPointerEvents().add(new HWRPointerEvent());
        Observable flatMap = new HWREnsureInitAction(HWRBundle.INSTANCE.getEmpty(), hWRInput).build().flatMap(new C7424d(hWRInput));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: m */
    public final Observable<?> m33325m(String engine) {
        Observable<?> doOnNext = Observable.just(Unit.INSTANCE).observeOn(Schedulers.m61350io()).doOnNext(new C7425e(engine));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}
