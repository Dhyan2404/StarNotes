package com.onyx.galaxy.note;

import android.content.IntentFilter;
import androidx.transition.Transition;
import com.blankj.utilcode.util.AppUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.DebugKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.LanguageManager;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.debug.PerformanceWatcher;
import com.onyx.android.sdk.cloudstorage.common.action.InitCloudStorageAction;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.data.utils.SecurityUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.textbox.widget.TextBoxThemeUtils;
import com.onyx.android.sdk.theme.utils.ThemeConst;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.universal.editor.action.DebugAction;
import com.onyx.android.sdk.universal.editor.action.hwr.HWRLoadActivationStateAction;
import com.onyx.android.sdk.universal.editor.config.DebugConfig;
import com.onyx.android.sdk.universal.editor.config.EditorThemeConfig;
import com.onyx.android.sdk.universal.editor.receiver.DebugBroadCastReceiver;
import com.onyx.android.sdk.universal.theme.UniversalThemeUtils;
import com.onyx.galaxy.note.NoteApp;
import com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction;
import com.onyx.galaxy.note.common.action.InitGlobalConfigAction;
import com.onyx.galaxy.note.common.action.LogLaunchAction;
import com.onyx.galaxy.note.common.action.NetworkChangeAction;
import com.onyx.galaxy.note.common.action.ThirdPartySdkInitAction;
import com.onyx.galaxy.note.common.callback.OrientationListener;
import com.onyx.galaxy.note.common.crash.CrashHandler;
import com.onyx.galaxy.note.common.data.AppConfigManager;
import com.onyx.galaxy.note.receiver.AppStatusChangeListener;
import com.onyx.galaxy.note.receiver.SystemLanguageReceiver;
import com.onyx.galaxy.note.receiver.ThemeChangeReceiver;
import com.onyx.galaxy.note.settings.utils.EyesComfortManager;
import com.onyx.galaxy.note.utils.HwrSdkInitializer;
import com.onyx.galaxy.note.utils.NoteUniversalColorCallbackImpl;
import com.onyx.galaxy.note.utils.lifecycler.AppActivityLifecycleDispatcher;
import com.sun.org.apache.bcel.internal.Constants;
import dagger.hilt.android.HiltAndroidApp;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0004\u001a\u00020\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u0002H\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0002H\u0002R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\u0018¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/NoteApp;", "Landroid/app/Application;", "", "onCreate", "initSdkWithAgreement", "onTerminate", "i", C6999h.f39688c, "m", GoogleApiAvailabilityLight.f29016b, C6997f.f39671c, "p", C4921e.f26537n, "c", "b", C6998g.f39679a, "j", "e", "l", C4921e.f26528e, "Lcom/onyx/galaxy/note/receiver/ThemeChangeReceiver;", "Lcom/onyx/galaxy/note/receiver/ThemeChangeReceiver;", "themeChangeReceiver", "Lcom/onyx/galaxy/note/receiver/AppStatusChangeListener;", "Lcom/onyx/galaxy/note/receiver/AppStatusChangeListener;", "appStatusChangeListener", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@HiltAndroidApp
/* loaded from: classes9.dex */
public final class NoteApp extends Hilt_NoteApp {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: i */
    @Nullable
    public static NoteApp f53346i;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public ThemeChangeReceiver themeChangeReceiver;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public AppStatusChangeListener appStatusChangeListener;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/NoteApp$Companion;", "", "()V", Transition.f10626J0, "Lcom/onyx/galaxy/note/NoteApp;", "getInstance", "()Lcom/onyx/galaxy/note/NoteApp;", "setInstance", "(Lcom/onyx/galaxy/note/NoteApp;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final NoteApp getInstance() {
            return NoteApp.f53346i;
        }

        public final void setInstance(@Nullable NoteApp noteApp) {
            NoteApp.f53346i = noteApp;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.galaxy.note.NoteApp$a */
    /* loaded from: classes9.dex */
    public static final class C10635a<T> implements Consumer {

        /* renamed from: e */
        public static final C10635a<T> f53349e = new C10635a<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EyesComfortManager.INSTANCE.init();
        }
    }

    /* renamed from: d */
    public static final void m41699d(NoteApp this$0, AccountDataBundle it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m41700b();
    }

    /* renamed from: b */
    public final void m41700b() {
        RxBaseAction.execute$default(new HWRLoadActivationStateAction(), null, null, null, 7, null);
        FetchAccountConfigurationsAction.INSTANCE.debounceFetch();
    }

    /* renamed from: c */
    public final void m41701c() {
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        RxjavaKt.doOnNextIf(accountDataBundle.loadOnyxAccountObservable(), new Function1<AccountDataBundle, Boolean>() { // from class: com.onyx.galaxy.note.NoteApp$initAccount$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull AccountDataBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(SecurityUtils.INSTANCE.isUserAgreementPassed());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.kuj
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                NoteApp.m41699d(NoteApp.this, (AccountDataBundle) obj);
            }
        }).subscribe();
        accountDataBundle.loadRecentLoginAccountList();
    }

    /* renamed from: e */
    public final void m41702e() {
        registerActivityLifecycleCallbacks(new AppActivityLifecycleDispatcher(this));
    }

    /* renamed from: f */
    public final void m41703f() {
        MMKVUtils.INSTANCE.intOption(ThemeConst.KEY_IS_SYSTEM_THEME_NIGHT, -1).put(getApplicationContext().getResources().getConfiguration().uiMode);
        ThemeChangeReceiver themeChangeReceiver = new ThemeChangeReceiver();
        this.themeChangeReceiver = themeChangeReceiver;
        registerReceiver(themeChangeReceiver, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
        AppStatusChangeListener appStatusChangeListener = new AppStatusChangeListener();
        this.appStatusChangeListener = appStatusChangeListener;
        Intrinsics.checkNotNull(appStatusChangeListener);
        AppUtils.registerAppStatusChangedListener(appStatusChangeListener);
    }

    /* renamed from: g */
    public final void m41704g() {
        new InitCloudStorageAction(this).build().subscribe();
    }

    /* renamed from: h */
    public final void m41705h() {
        Observable.just(Unit.INSTANCE).delay(2L, TimeUnit.SECONDS).observeOn(AndroidSchedulers.mainThread()).doOnNext(C10635a.f53349e).subscribe();
    }

    /* renamed from: i */
    public final void m41706i() {
        RxBaseAction.execute$default(new InitGlobalConfigAction(), null, null, null, 7, null);
    }

    public final void initSdkWithAgreement() {
        if (SecurityUtils.INSTANCE.isUserAgreementPassed()) {
            OnyxErrorHandler.subscribeWithErrorHandler$default(OnyxErrorHandler.INSTANCE, new ThirdPartySdkInitAction().build(), null, null, 3, null);
            HwrSdkInitializer.INSTANCE.installDefaultResource();
        }
    }

    /* renamed from: j */
    public final void m41707j() {
        HwrSdkInitializer.INSTANCE.initialize();
    }

    /* renamed from: k */
    public final void m41708k() {
        RxBaseAction.execute$default(new DebugAction(DebugConfig.INSTANCE.isDebuggable()), null, null, null, 7, null);
    }

    /* renamed from: l */
    public final void m41709l() {
        registerComponentCallbacks(OrientationListener.INSTANCE);
    }

    /* renamed from: m */
    public final void m41710m() {
        RxBaseAction.Companion companion = RxBaseAction.INSTANCE;
        companion.init(this);
        companion.setReportTimeMs(0);
    }

    /* renamed from: n */
    public final void m41711n() {
        ThemeUtils.init(this);
        EditorThemeConfig.INSTANCE.setSplitScreenReceiverHintColor(ResManager.INSTANCE.getColor(C10651R.color.color_split_screen_receiver_hint));
        m41703f();
        TextBoxThemeUtils.INSTANCE.setTextBoxSwitchCallback(new Function1<Integer, Integer>() { // from class: com.onyx.galaxy.note.NoteApp$initTheme$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                return invoke(num.intValue());
            }

            @NotNull
            public final Integer invoke(int i) {
                return Integer.valueOf(ThemeUtils.getThemePrimaryColor());
            }
        });
        UniversalThemeUtils.INSTANCE.setUniversalColorCallback(NoteUniversalColorCallbackImpl.INSTANCE);
    }

    /* renamed from: o */
    public final void m41712o() {
        new SystemLanguageReceiver().register(this);
        new DebugBroadCastReceiver().register(this);
    }

    @Override // com.onyx.galaxy.note.Hilt_NoteApp, android.app.Application
    public void onCreate() {
        super.onCreate();
        f53346i = this;
        m41710m();
        PerformanceWatcher.INSTANCE.beginAppCreate();
        AppConfigManager.INSTANCE.init(this);
        ResManager.INSTANCE.init(this);
        m41706i();
        ClusterManager.INSTANCE.init();
        m41708k();
        final Debug debug = Debug.INSTANCE;
        RxJavaPlugins.setErrorHandler(new Consumer() { // from class: com.onyx.galaxy.note.NoteApp.b
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                DebugKt.eIgnorable(Debug.this, p0);
            }
        });
        MMKVUtils.INSTANCE.init(this);
        KSyncBundle.INSTANCE.initCouchbase();
        m41713p();
        m41701c();
        m41704g();
        m41707j();
        m41711n();
        CrashHandler.INSTANCE.init(this);
        m41702e();
        m41709l();
        m41712o();
        initSdkWithAgreement();
        LanguageManager.INSTANCE.applyAppLanguage(this);
        RxBaseAction.execute$default(new LogLaunchAction(), null, null, null, 7, null);
        m41705h();
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
        unregisterReceiver(this.themeChangeReceiver);
        AppStatusChangeListener appStatusChangeListener = this.appStatusChangeListener;
        if (appStatusChangeListener != null) {
            AppUtils.unregisterAppStatusChangedListener(appStatusChangeListener);
        }
    }

    /* renamed from: p */
    public final void m41713p() {
        RxBaseAction.execute$default(new NetworkChangeAction(), null, null, null, 7, null);
    }
}
