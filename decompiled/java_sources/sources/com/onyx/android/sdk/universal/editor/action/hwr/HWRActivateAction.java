package com.onyx.android.sdk.universal.editor.action.hwr;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.common.error.BaseError;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.LogFileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.action.BaseRxAccountAction;
import com.onyx.android.sdk.data.account.action.NetworkCheckAction;
import com.onyx.android.sdk.data.account.bean.HWRActivationConfig;
import com.onyx.android.sdk.data.account.model.HWRActivationModel;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerTypeKt;
import com.onyx.android.sdk.hwr.service.manager.HWRActivationManager;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.note.HWREngineInitFailedEvent;
import com.onyx.android.sdk.universal.editor.events.note.HWRFinishSDKFirstActivationEvent;
import com.onyx.android.sdk.universal.editor.events.note.HWRStartSDKFirstActivationEvent;
import com.onyx.android.sdk.universal.editor.events.note.HWRTrialActivatedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.util.HWREngineManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u0000 52\b\u0012\u0004\u0012\u00020\u00000\u0001:\u00015B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0015¢\u0006\u0004\b3\u00104J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\b\u0010\n\u001a\u00020\tH\u0002J\b\u0010\u000b\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\tH\u0002J\b\u0010\r\u001a\u00020\tH\u0002J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0014\u0010#\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010'\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00102\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u00101¨\u00066"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "productKey", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "getSDKActivatedOption", "m", "", GoogleApiAvailabilityLight.f29016b, "l", "q", "p", "", "error", C4921e.f26528e, "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "e", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "hwrBundle", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", C6997f.f39671c, "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "recognizerType", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", C6999h.f39688c, Constants.STRING_SIG, "engine", "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;", "i", "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;", "record", "Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;", "j", "Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;", AbstractLogger.CONFIG, "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", C4921e.f26537n, "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "input", "", "J", "millis", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HWRActivateAction extends BaseRxAccountAction<HWRActivateAction> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: m */
    @NotNull
    public static final String f49581m = "device_fisrt_activated";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final HWRBundle hwrBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final HWRRecognizerType recognizerType;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public EditorBundle editorBundle;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String engine;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public HWRActivationModel record;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public HWRActivationConfig config;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public HWRInput input;

    /* renamed from: l, reason: from kotlin metadata */
    public long millis;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$Companion;", "", "()V", "KEY_SDK_FIRST_ACTIVATED", "", "getKEY_SDK_FIRST_ACTIVATED", "()Ljava/lang/String;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getKEY_SDK_FIRST_ACTIVATED() {
            return HWRActivateAction.f49581m;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction$a */
    /* loaded from: classes8.dex */
    public static final class C9383a<T, R> implements Function {
        public C9383a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRActivateAction> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRActivateAction.this.m38874m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction$b */
    /* loaded from: classes8.dex */
    public static final class C9384b<T> implements Consumer {
        public C9384b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HWRActivationModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRActivateAction.this.m38876o(false);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction$c */
    /* loaded from: classes8.dex */
    public static final class C9385c<T> implements Consumer {
        public C9385c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRActivateAction.this.m38876o(true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction$d */
    /* loaded from: classes8.dex */
    public static final class C9386d<T> implements Consumer {
        public C9386d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HWRActivationModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRActivateAction.this.m38878q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction$e */
    /* loaded from: classes8.dex */
    public static final class C9387e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f49594e;

        public C9387e(String str) {
            this.f49594e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull HWRActivationModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWRFetchActivationStateAction(this.f49594e).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction$f */
    /* loaded from: classes8.dex */
    public static final class C9388f<T, R> implements Function {
        public C9388f() {
        }

        @NotNull
        /* renamed from: a */
        public final HWRActivateAction m38884a(boolean z) {
            return HWRActivateAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m38884a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction$g */
    /* loaded from: classes8.dex */
    public static final class C9389g<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ String f49597f;

        public C9389g(String str) {
            this.f49597f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HWRActivateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRActivateAction.this.config = HWRActivationManager.INSTANCE.getHWRActivationConfig(this.f49597f);
            HWRActivateAction.this.m38875n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction$h */
    /* loaded from: classes8.dex */
    public static final class C9390h<T, R> implements Function {

        /* renamed from: e */
        public static final C9390h<T, R> f49598e = new C9390h<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new NetworkCheckAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction$i */
    /* loaded from: classes8.dex */
    public static final class C9391i<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f49599e;

        public C9391i(String str) {
            this.f49599e = str;
        }

        @NotNull
        /* renamed from: a */
        public final HWRActivationModel m38887a(boolean z) {
            return HWRActivationManager.INSTANCE.getHWREngineActivationState(this.f49599e);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m38887a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction$j */
    /* loaded from: classes8.dex */
    public static final class C9392j<T> implements Predicate {

        /* renamed from: e */
        public static final C9392j<T> f49600e = new C9392j<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull HWRActivationModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getUniqueId().length() > 0;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction$k */
    /* loaded from: classes8.dex */
    public static final class C9393k<T> implements Consumer {
        public C9393k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HWRActivationModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRActivateAction.this.record = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction$l */
    /* loaded from: classes8.dex */
    public static final class C9394l<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ String f49603f;

        public C9394l(String str) {
            this.f49603f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HWRActivationModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRActivateAction.this.config = HWRActivationManager.INSTANCE.getHWRActivationConfig(this.f49603f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction$m */
    /* loaded from: classes8.dex */
    public static final class C9395m<T> implements Consumer {
        public C9395m() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HWRActivationModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRActivateAction.this.m38877p();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction$n */
    /* loaded from: classes8.dex */
    public static final class C9396n<T> implements Consumer {
        public C9396n() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HWRActivationModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRActivateAction.this.m38875n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction$o */
    /* loaded from: classes8.dex */
    public static final class C9397o<T> implements Consumer {
        public C9397o() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HWRActivationModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRActivateAction.this.m38873l();
        }
    }

    public HWRActivateAction(@NotNull HWRBundle hwrBundle, @NotNull HWRRecognizerType recognizerType) {
        Intrinsics.checkNotNullParameter(hwrBundle, "hwrBundle");
        Intrinsics.checkNotNullParameter(recognizerType, "recognizerType");
        this.hwrBundle = hwrBundle;
        this.recognizerType = recognizerType;
        this.engine = HWRRecognizerTypeKt.getEngineType(recognizerType);
        this.record = new HWRActivationModel();
        this.config = new HWRActivationConfig();
        this.input = new HWRInput();
        this.millis = DateTimeUtil.INSTANCE.millisOfNow();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWRActivateAction> create() {
        Observable<HWRActivateAction> flatMap = Observable.just(Unit.INSTANCE).flatMap(new C9383a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @Nullable
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final BooleanOption getSDKActivatedOption(@NotNull String productKey) {
        Intrinsics.checkNotNullParameter(productKey, "productKey");
        return MMKVUtils.INSTANCE.booleanOption(StringKt.concat(AccountDataBundle.INSTANCE.getSyncUserId(), f49581m, productKey), false);
    }

    /* renamed from: l */
    public final void m38873l() {
        this.millis = RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, ((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).commitHWRActivationLog(), false, 1, null).getServerTime();
    }

    /* renamed from: m */
    public final Observable<HWRActivateAction> m38874m() {
        if (!this.hwrBundle.getRecognizerManager().getRecognizer(this.recognizerType).needActivate()) {
            Observable<HWRActivateAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        String engineType = HWRRecognizerTypeKt.getEngineType(this.recognizerType);
        HWRActivationManager hWRActivationManager = HWRActivationManager.INSTANCE;
        if (hWRActivationManager.isEngineActivated(engineType)) {
            Observable<HWRActivateAction> doOnNext = Observable.just(this).observeOn(this.hwrBundle.getHwrObserveOn()).doOnNext(new C9389g(engineType));
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            return doOnNext;
        }
        if (hWRActivationManager.isEngineExceedDeviceLimit(engineType)) {
            throw OnyxException.INSTANCE.m31891of(BaseError.EXCEED_MAX_DEVICE_LIMIT);
        }
        Observable<HWRActivateAction> map = Observable.just(Unit.INSTANCE).flatMap(C9390h.f49598e).map(new C9391i(engineType)).filter(C9392j.f49600e).doOnNext(new C9393k()).doOnNext(new C9394l(engineType)).doOnNext(new C9395m()).observeOn(this.hwrBundle.getHwrObserveOn()).doOnNext(new C9396n()).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).doOnNext(new C9397o()).doOnNext(new C9384b()).doOnError(new C9385c()).doOnNext(new C9386d()).flatMap(new C9387e(engineType)).map(new C9388f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final void m38875n() {
        try {
            this.input.setRecognizerType(this.recognizerType);
            this.input.setAppId(this.config.getAppId());
            this.input.setProductKey(this.config.getProductKey());
            this.input.setUserOpenId(AccountDataBundle.INSTANCE.getSyncUserId());
            HWREngineManager.INSTANCE.initHWRInputByEngine(this.input);
            this.hwrBundle.getRecognizerManager().initRecognizer(this.recognizerType, this.input);
        } catch (Throwable th) {
            LogFileUtils.INSTANCE.m32103e(HWRActivateAction.class, "Init HWR Recognizer Fail", th);
            EditorBundle editorBundle = this.editorBundle;
            if (editorBundle != null) {
                EditorBundleKt.postEvent(editorBundle, new HWREngineInitFailedEvent());
            }
            throw th;
        }
    }

    /* renamed from: o */
    public final void m38876o(boolean error) {
        if (error) {
            EditorBundle editorBundle = this.editorBundle;
            if (editorBundle != null) {
                EditorBundleKt.postEvent(editorBundle, new HWRFinishSDKFirstActivationEvent());
                return;
            }
            return;
        }
        BooleanOption sDKActivatedOption = getSDKActivatedOption(this.config.getProductKey());
        if (sDKActivatedOption.get()) {
            return;
        }
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 != null) {
            EditorBundleKt.postEvent(editorBundle2, new HWRFinishSDKFirstActivationEvent());
        }
        sDKActivatedOption.put(true);
    }

    /* renamed from: p */
    public final void m38877p() {
        EditorBundle editorBundle;
        if (getSDKActivatedOption(this.config.getProductKey()).get() || (editorBundle = this.editorBundle) == null) {
            return;
        }
        EditorBundleKt.postEvent(editorBundle, new HWRStartSDKFirstActivationEvent());
    }

    /* renamed from: q */
    public final void m38878q() {
        EditorBundle editorBundle;
        if (HWRActivationManager.INSTANCE.getHWREngineActivationState(this.engine).getState() != 1 || (editorBundle = this.editorBundle) == null) {
            return;
        }
        EditorBundleKt.postEvent(editorBundle, new HWRTrialActivatedEvent());
    }

    public final void setEditorBundle(@Nullable EditorBundle editorBundle) {
        this.editorBundle = editorBundle;
    }
}
