package com.onyx.galaxy.note.common.data;

import android.content.Context;
import android.os.Build;
import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.utils.MarketUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.bean.AccountPermissionItem;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.data.AppConfigManager;
import com.onyx.galaxy.note.common.data.DeviceConfig;
import com.onyx.galaxy.note.settings.data.SettingsStylusType;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.EnumUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00000\u0010J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00000\u00102\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u0016J\b\u0010\u001a\u001a\u00020\u0016H\u0002J\b\u0010\u001b\u001a\u00020\u0016H\u0002J\n\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0002J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010 \u001a\u00020!J\u0006\u0010\"\u001a\u00020#J\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020'J\u0006\u0010(\u001a\u00020%J\u000e\u0010)\u001a\u00020*2\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010+\u001a\u00020%2\u0006\u0010,\u001a\u00020\u0016J\u0006\u0010-\u001a\u00020%J\u0018\u0010.\u001a\u00020%2\u0006\u0010/\u001a\u00020!2\b\b\u0002\u0010\u0019\u001a\u00020\u0016J\u0016\u00100\u001a\u00020%2\u0006\u00101\u001a\u00020\u00162\u0006\u0010,\u001a\u00020\u0016J\u0010\u00102\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u000e\u00103\u001a\b\u0012\u0004\u0012\u00020\u00160\u0018H\u0002J\u000e\u00104\u001a\b\u0012\u0004\u0012\u0002050\u0018H\u0002J\u0010\u00106\u001a\u00020*2\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0016\u00107\u001a\u00020\u00162\f\u00108\u001a\b\u0012\u0004\u0012\u00020\u00160\u0018H\u0002J\u0016\u00109\u001a\u00020\u00162\f\u0010:\u001a\b\u0012\u0004\u0012\u0002050\u0018H\u0002J\b\u0010;\u001a\u00020*H\u0002J\u001a\u0010;\u001a\u00020*2\u0012\u0010<\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u00180=J\u0016\u0010;\u001a\u00020*2\f\u00108\u001a\b\u0012\u0004\u0012\u00020\u00160\u0018H\u0002J\b\u0010>\u001a\u00020*H\u0002J\u001a\u0010>\u001a\u00020*2\u0012\u0010<\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002050\u00180=J\u0016\u0010>\u001a\u00020*2\f\u0010:\u001a\b\u0012\u0004\u0012\u0002050\u0018H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u0006?"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/data/AppConfigManager;", "", "()V", "appConfig", "Lcom/onyx/galaxy/note/common/data/AppConfig;", "getAppConfig", "()Lcom/onyx/galaxy/note/common/data/AppConfig;", "setAppConfig", "(Lcom/onyx/galaxy/note/common/data/AppConfig;)V", "dataScheduler", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "getDataScheduler", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "dataScheduler$delegate", "Lkotlin/Lazy;", "createDataObservable", "Lio/reactivex/rxjava3/core/Observable;", "ensureAppConfig", "ensureLoadObservable", "appContext", "Landroid/content/Context;", "getAccountBindPrimaryType", "", "getChannelAuth", "", "channel", "getChannelAuthKey", "getChannelPermissionKey", "getChannelsFeatureConfig", "Lcom/onyx/galaxy/note/common/data/ChannelsFeatureConfig;", "getDataObserveOn", "Lio/reactivex/rxjava3/core/Scheduler;", "getDefaultLoginType", "", "getSettingsStylusType", "Lcom/onyx/galaxy/note/settings/data/SettingsStylusType;", "getSupportPaymentTheme", "", "getVerifyCodeTimeout", "", "hasPhoneLaw", "init", "", "isChannelOrDeviceLoginSupport", "loginMethod", "isDefaultStatistEnable", "isSupportLoginType", "loginType", "isSupportPlatformLogin", "platform", "loadAppConfig", "loadChannelAuth", "loadChannelPermission", "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;", "onAppConfigLoaded", "saveChannelAuth", "authList", "saveChannelPermission", "permissionList", "updateChannelAuth", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/onyx/android/sdk/data/account/bean/ResultData;", "updateChannelPermission", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nAppConfigManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppConfigManager.kt\ncom/onyx/galaxy/note/common/data/AppConfigManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,246:1\n1#2:247\n*E\n"})
/* loaded from: classes9.dex */
public final class AppConfigManager {

    @NotNull
    public static final AppConfigManager INSTANCE = new AppConfigManager();
    public static volatile AppConfig appConfig;

    /* renamed from: dataScheduler$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy dataScheduler;

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.galaxy.note.common.data.AppConfigManager$dataScheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.INSTANCE.sharedSingleThreadManager();
            }
        });
        dataScheduler = lazy;
    }

    private AppConfigManager() {
    }

    private final AppConfig ensureAppConfig() {
        if (appConfig == null) {
            onAppConfigLoaded(loadAppConfig(ResManager.INSTANCE.getAppContext()));
        }
        return getAppConfig();
    }

    public static /* synthetic */ List getChannelAuth$default(AppConfigManager appConfigManager, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = MarketUtils.INSTANCE.getMarketChannel();
        }
        return appConfigManager.getChannelAuth(str);
    }

    private final String getChannelAuthKey() {
        return "mmkv_auth_keychannel";
    }

    private final String getChannelPermissionKey() {
        return "marketchannel" + MarketUtils.INSTANCE.getMarketChannel();
    }

    private final ChannelsFeatureConfig getChannelsFeatureConfig() {
        String lowerCase = MarketUtils.INSTANCE.getMarketChannel().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return ensureAppConfig().getChannelsFeatureMap().get(lowerCase);
    }

    private final RxScheduler getDataScheduler() {
        return (RxScheduler) dataScheduler.getValue();
    }

    public static /* synthetic */ boolean isSupportLoginType$default(AppConfigManager appConfigManager, int i, String str, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = MarketUtils.INSTANCE.getMarketChannel();
        }
        return appConfigManager.isSupportLoginType(i, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AppConfig loadAppConfig(Context appContext) {
        InputStream openRawResource = appContext.getResources().openRawResource(C10651R.raw.app_config);
        Intrinsics.checkNotNullExpressionValue(openRawResource, "openRawResource(...)");
        try {
            String iOUtils = IOUtils.toString(new InputStreamReader(openRawResource));
            CloseableKt.closeFinally(openRawResource, null);
            Object parseObject = JSONUtils.INSTANCE.parseObject(iOUtils, (Class<Object>) AppConfig.class);
            Intrinsics.checkNotNull(parseObject);
            return (AppConfig) parseObject;
        } finally {
        }
    }

    private final List<String> loadChannelAuth() {
        List<String> emptyList;
        String string = MMKVUtils.INSTANCE.getString(getChannelAuthKey(), "");
        if (!StringKt.isEmpty(string)) {
            return CollectionKt.ensureList((List) JSONUtils.INSTANCE.parseObject(string, new TypeReference<List<? extends String>>() { // from class: com.onyx.galaxy.note.common.data.AppConfigManager$loadChannelAuth$1
            }));
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    private final List<AccountPermissionItem> loadChannelPermission() {
        List<AccountPermissionItem> emptyList;
        String string = MMKVUtils.INSTANCE.getString(getChannelPermissionKey(), "");
        if (!StringKt.isEmpty(string)) {
            return CollectionKt.ensureList((List) JSONUtils.INSTANCE.parseObject(string, new TypeReference<List<? extends AccountPermissionItem>>() { // from class: com.onyx.galaxy.note.common.data.AppConfigManager$loadChannelPermission$1
            }));
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onAppConfigLoaded(AppConfig appConfig2) {
        setAppConfig(appConfig2);
        updateChannelPermission();
        updateChannelAuth();
    }

    private final String saveChannelAuth(List<String> authList) {
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        String channelAuthKey = getChannelAuthKey();
        String json = JSONUtils.INSTANCE.toJson(authList);
        if (json == null) {
            json = "";
        }
        mMKVUtils.putString(channelAuthKey, json);
        return MarketUtils.INSTANCE.getMarketChannel();
    }

    private final String saveChannelPermission(List<AccountPermissionItem> permissionList) {
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        String channelPermissionKey = getChannelPermissionKey();
        String json = JSONUtils.INSTANCE.toJson(permissionList);
        if (json == null) {
            json = "";
        }
        mMKVUtils.putString(channelPermissionKey, json);
        return MarketUtils.INSTANCE.getMarketChannel();
    }

    private final void updateChannelAuth() {
        List<String> loadChannelAuth = loadChannelAuth();
        if (CollectionKt.isNullOrEmpty(loadChannelAuth)) {
            return;
        }
        updateChannelAuth(loadChannelAuth);
    }

    private final void updateChannelPermission() {
        List<AccountPermissionItem> loadChannelPermission = loadChannelPermission();
        if (CollectionKt.isNullOrEmpty(loadChannelPermission)) {
            return;
        }
        updateChannelPermission(loadChannelPermission);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DeviceConfig updateChannelPermission$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (DeviceConfig) tmp0.invoke(obj);
    }

    @NotNull
    public final Observable<AppConfigManager> createDataObservable() {
        Observable<AppConfigManager> observeOn = Observable.just(this).observeOn(getDataObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Observable<AppConfigManager> ensureLoadObservable(@NotNull final Context appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Observable<AppConfigManager> map = createDataObservable().map(new Function() { // from class: com.onyx.galaxy.note.common.data.AppConfigManager$ensureLoadObservable$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final AppConfig apply(@NotNull AppConfigManager it2) {
                AppConfig loadAppConfig;
                Intrinsics.checkNotNullParameter(it2, "it");
                loadAppConfig = AppConfigManager.INSTANCE.loadAppConfig(appContext);
                return loadAppConfig;
            }
        }).observeOn(AndroidSchedulers.mainThread()).doOnNext(new Consumer() { // from class: com.onyx.galaxy.note.common.data.AppConfigManager$ensureLoadObservable$2
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull AppConfig it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                AppConfigManager.INSTANCE.onAppConfigLoaded(it2);
            }
        }).map(new Function() { // from class: com.onyx.galaxy.note.common.data.AppConfigManager$ensureLoadObservable$3
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final AppConfigManager apply(@NotNull AppConfig it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return AppConfigManager.this;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final String getAccountBindPrimaryType() {
        LoginConfig loginConfig = ensureAppConfig().getLoginConfigMap().get(ClusterManager.INSTANCE.getCurClusterInfo().getRegion());
        if (loginConfig == null) {
            loginConfig = new LoginConfig(null, 0L, false, 7, null);
        }
        return loginConfig.getLoginPrimaryType();
    }

    @NotNull
    public final AppConfig getAppConfig() {
        AppConfig appConfig2 = appConfig;
        if (appConfig2 != null) {
            return appConfig2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("appConfig");
        return null;
    }

    @NotNull
    public final List<String> getChannelAuth(@NotNull String channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        return ensureAppConfig().getChannelAuth(channel);
    }

    @NotNull
    public final Scheduler getDataObserveOn() {
        return getDataScheduler().getObserveOn();
    }

    public final int getDefaultLoginType() {
        if (isSupportLoginType$default(this, 1, null, 2, null)) {
            return 1;
        }
        return isSupportLoginType$default(this, 2, null, 2, null) ? 2 : 6;
    }

    @NotNull
    public final SettingsStylusType getSettingsStylusType() {
        ChannelsFeatureConfig channelsFeatureConfig = getChannelsFeatureConfig();
        String stylusType = channelsFeatureConfig != null ? channelsFeatureConfig.getStylusType() : null;
        return (SettingsStylusType) AnyKt.getOrElse(EnumUtils.getEnum(SettingsStylusType.class, (String) AnyKt.getOrElse(StringKt.isNotEmpty(stylusType) ? stylusType : null, new Function0<String>() { // from class: com.onyx.galaxy.note.common.data.AppConfigManager$getSettingsStylusType$stylusTypeValue$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return "STYLUS_NORMAL";
            }
        })), new Function0<SettingsStylusType>() { // from class: com.onyx.galaxy.note.common.data.AppConfigManager$getSettingsStylusType$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SettingsStylusType invoke() {
                return SettingsStylusType.STYLUS_NORMAL;
            }
        });
    }

    public final boolean getSupportPaymentTheme() {
        ChannelsFeatureConfig channelsFeatureConfig = getChannelsFeatureConfig();
        if (channelsFeatureConfig != null) {
            return channelsFeatureConfig.getSupportPaymentTheme();
        }
        return false;
    }

    public final long getVerifyCodeTimeout() {
        LoginConfig loginConfig = ensureAppConfig().getLoginConfigMap().get(ClusterManager.INSTANCE.getCurClusterInfo().getRegion());
        if (loginConfig == null) {
            loginConfig = new LoginConfig(null, 0L, false, 7, null);
        }
        return loginConfig.getTimeout();
    }

    public final boolean hasPhoneLaw() {
        LoginConfig loginConfig = ensureAppConfig().getLoginConfigMap().get(ClusterManager.INSTANCE.getCurClusterInfo().getRegion());
        if (loginConfig == null) {
            loginConfig = new LoginConfig(null, 0L, false, 7, null);
        }
        return loginConfig.getHasPhoneLaw();
    }

    public final void init(@NotNull Context appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        ensureLoadObservable(appContext).subscribe();
    }

    public final boolean isChannelOrDeviceLoginSupport(@NotNull String loginMethod) {
        Intrinsics.checkNotNullParameter(loginMethod, "loginMethod");
        String BRAND = Build.BRAND;
        Intrinsics.checkNotNullExpressionValue(BRAND, "BRAND");
        return isSupportPlatformLogin(BRAND, loginMethod) || isSupportPlatformLogin(MarketUtils.INSTANCE.getMarketChannel(), loginMethod);
    }

    public final boolean isDefaultStatistEnable() {
        String lowerCase = MarketUtils.INSTANCE.getMarketChannel().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return ensureAppConfig().getStatistChannels().contains(lowerCase);
    }

    public final boolean isSupportLoginType(int loginType, @NotNull String channel) {
        boolean contains;
        Intrinsics.checkNotNullParameter(channel, "channel");
        contains = CollectionsKt___CollectionsKt.contains(getChannelAuth(channel), AppConfig.INSTANCE.getAUTH_LOGIN_TYPE_MAP().get(Integer.valueOf(loginType)));
        return contains;
    }

    public final boolean isSupportPlatformLogin(@NotNull String platform, @NotNull String loginMethod) {
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(loginMethod, "loginMethod");
        return ensureAppConfig().isSupportPlatformLogin(platform, loginMethod);
    }

    public final void setAppConfig(@NotNull AppConfig appConfig2) {
        Intrinsics.checkNotNullParameter(appConfig2, "<set-?>");
        appConfig = appConfig2;
    }

    public final void updateChannelAuth(@NotNull ResultData<List<String>> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!result.isSuccessful() || result.getData() == null) {
            return;
        }
        updateChannelAuth(CollectionKt.ensureList(result.getData()));
    }

    public final void updateChannelPermission(@NotNull ResultData<List<AccountPermissionItem>> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!result.isSuccessful() || result.getData() == null) {
            return;
        }
        updateChannelPermission(CollectionKt.ensureList(result.getData()));
    }

    private final void updateChannelAuth(List<String> authList) {
        String lowerCase = saveChannelAuth(authList).toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        if (ensureAppConfig().getChannelAuthMap().containsKey(lowerCase)) {
            ensureAppConfig().getChannelAuthMap().put(lowerCase, authList);
        }
    }

    private final void updateChannelPermission(List<AccountPermissionItem> permissionList) {
        List<AccountPermissionItem> mutableList;
        String saveChannelPermission = saveChannelPermission(permissionList);
        Map<String, DeviceConfig> deviceConfigMap = ensureAppConfig().getDeviceConfigMap();
        String lowerCase = saveChannelPermission.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        final AppConfigManager$updateChannelPermission$1 appConfigManager$updateChannelPermission$1 = new Function1<String, DeviceConfig>() { // from class: com.onyx.galaxy.note.common.data.AppConfigManager$updateChannelPermission$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final DeviceConfig invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new DeviceConfig();
            }
        };
        DeviceConfig computeIfAbsent = deviceConfigMap.computeIfAbsent(lowerCase, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.yc
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DeviceConfig updateChannelPermission$lambda$0;
                updateChannelPermission$lambda$0 = AppConfigManager.updateChannelPermission$lambda$0(Function1.this, obj);
                return updateChannelPermission$lambda$0;
            }
        });
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) permissionList);
        computeIfAbsent.setPermissions(mutableList);
    }
}
