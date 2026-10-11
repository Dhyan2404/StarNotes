package com.onyx.galaxy.note.common.data;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.account.bean.AccountPermissionItem;
import com.onyx.android.sdk.data.account.bean.AccountPermissions;
import com.onyx.android.sdk.data.account.bean.LoginType;
import com.onyx.android.sdk.data.utils.ConfigLoader;
import com.onyx.galaxy.note.account.data.AccountConfig;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00050\u00062\u0006\u0010\u001e\u001a\u00020\u0005H\u0007J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0005H\u0007R,\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00060\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR&\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\f0\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR&\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00100\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\b\"\u0004\b\u0012\u0010\nR&\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00140\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\b\"\u0004\b\u0016\u0010\nR \u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006$"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/data/AppConfig;", "", "()V", "channelAuthMap", "", "", "", "getChannelAuthMap", "()Ljava/util/Map;", "setChannelAuthMap", "(Ljava/util/Map;)V", "channelsFeatureMap", "Lcom/onyx/galaxy/note/common/data/ChannelsFeatureConfig;", "getChannelsFeatureMap", "setChannelsFeatureMap", "deviceConfigMap", "Lcom/onyx/galaxy/note/common/data/DeviceConfig;", "getDeviceConfigMap", "setDeviceConfigMap", "loginConfigMap", "Lcom/onyx/galaxy/note/common/data/LoginConfig;", "getLoginConfigMap", "setLoginConfigMap", "statistChannels", "", "getStatistChannels", "()Ljava/util/List;", "setStatistChannels", "(Ljava/util/List;)V", "getChannelAuth", "channel", "isSupportPlatformLogin", "", "platform", "loginMethod", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class AppConfig {

    @NotNull
    public static final String ACCOUNT_CONFIG_RAW_NAME = "account_config";

    @NotNull
    private static final Lazy<Map<Integer, String>> AUTH_LOGIN_TYPE_MAP$delegate;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final Lazy<List<String>> DEFAULT_CHANNEL_AUTH$delegate;

    @NotNull
    public static final String MMKV_AUTH_KEY = "mmkv_auth_key";

    @NotNull
    private static final Lazy<AccountConfig> accountConfig$delegate;

    @NotNull
    private Map<String, LoginConfig> loginConfigMap = new LinkedHashMap();

    @NotNull
    private Map<String, DeviceConfig> deviceConfigMap = new LinkedHashMap();

    @NotNull
    private Map<String, List<String>> channelAuthMap = new LinkedHashMap();

    @NotNull
    private List<String> statistChannels = new ArrayList();

    @NotNull
    private Map<String, ChannelsFeatureConfig> channelsFeatureMap = new LinkedHashMap();

    @Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u0006H\u0002J\u000e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\rH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R'\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR!\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\r8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001d\u0010\u0012\u001a\u0004\u0018\u00010\u00138FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u000b\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/data/AppConfig$Companion;", "", "()V", "ACCOUNT_CONFIG_RAW_NAME", "", "AUTH_LOGIN_TYPE_MAP", "", "", "getAUTH_LOGIN_TYPE_MAP", "()Ljava/util/Map;", "AUTH_LOGIN_TYPE_MAP$delegate", "Lkotlin/Lazy;", "DEFAULT_CHANNEL_AUTH", "", "getDEFAULT_CHANNEL_AUTH", "()Ljava/util/List;", "DEFAULT_CHANNEL_AUTH$delegate", "MMKV_AUTH_KEY", "accountConfig", "Lcom/onyx/galaxy/note/account/data/AccountConfig;", "getAccountConfig", "()Lcom/onyx/galaxy/note/account/data/AccountConfig;", "accountConfig$delegate", "generateAuthByLoginTypeMap", "generateDefaultChannelAuth", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Map<Integer, String> generateAuthByLoginTypeMap() {
            ArrayList<String> arrayList;
            LoginType loginType = LoginType.INSTANCE;
            AccountConfig accountConfig = getAccountConfig();
            if (accountConfig == null || (arrayList = accountConfig.getLoginTypes()) == null) {
                arrayList = new ArrayList<>();
            }
            return loginType.getLoginMapByNames(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<String> generateDefaultChannelAuth() {
            ArrayList<String> loginTypes;
            AccountConfig accountConfig = getAccountConfig();
            return (accountConfig == null || (loginTypes = accountConfig.getLoginTypes()) == null) ? new ArrayList() : loginTypes;
        }

        @NotNull
        public final Map<Integer, String> getAUTH_LOGIN_TYPE_MAP() {
            return (Map) AppConfig.AUTH_LOGIN_TYPE_MAP$delegate.getValue();
        }

        @Nullable
        public final AccountConfig getAccountConfig() {
            return (AccountConfig) AppConfig.accountConfig$delegate.getValue();
        }

        @NotNull
        public final List<String> getDEFAULT_CHANNEL_AUTH() {
            return (List) AppConfig.DEFAULT_CHANNEL_AUTH$delegate.getValue();
        }

        private Companion() {
        }
    }

    static {
        Lazy<List<String>> lazy;
        Lazy<Map<Integer, String>> lazy2;
        Lazy<AccountConfig> lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends String>>() { // from class: com.onyx.galaxy.note.common.data.AppConfig$Companion$DEFAULT_CHANNEL_AUTH$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<? extends String> invoke() {
                List<? extends String> generateDefaultChannelAuth;
                generateDefaultChannelAuth = AppConfig.INSTANCE.generateDefaultChannelAuth();
                return generateDefaultChannelAuth;
            }
        });
        DEFAULT_CHANNEL_AUTH$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Map<Integer, ? extends String>>() { // from class: com.onyx.galaxy.note.common.data.AppConfig$Companion$AUTH_LOGIN_TYPE_MAP$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Map<Integer, ? extends String> invoke() {
                Map<Integer, ? extends String> generateAuthByLoginTypeMap;
                generateAuthByLoginTypeMap = AppConfig.INSTANCE.generateAuthByLoginTypeMap();
                return generateAuthByLoginTypeMap;
            }
        });
        AUTH_LOGIN_TYPE_MAP$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<AccountConfig>() { // from class: com.onyx.galaxy.note.common.data.AppConfig$Companion$accountConfig$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final AccountConfig invoke() {
                return (AccountConfig) ConfigLoader.INSTANCE.load(AccountConfig.class, AppConfig.ACCOUNT_CONFIG_RAW_NAME);
            }
        });
        accountConfig$delegate = lazy3;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final List<String> getChannelAuth(@NotNull String channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        Map<String, List<String>> map = this.channelAuthMap;
        String lowerCase = channel.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        List<String> list = map.get(lowerCase);
        return list == null ? INSTANCE.getDEFAULT_CHANNEL_AUTH() : list;
    }

    @NotNull
    public final Map<String, List<String>> getChannelAuthMap() {
        return this.channelAuthMap;
    }

    @NotNull
    public final Map<String, ChannelsFeatureConfig> getChannelsFeatureMap() {
        return this.channelsFeatureMap;
    }

    @NotNull
    public final Map<String, DeviceConfig> getDeviceConfigMap() {
        return this.deviceConfigMap;
    }

    @NotNull
    public final Map<String, LoginConfig> getLoginConfigMap() {
        return this.loginConfigMap;
    }

    @NotNull
    public final List<String> getStatistChannels() {
        return this.statistChannels;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isSupportPlatformLogin(@NotNull String platform, @NotNull String loginMethod) {
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(loginMethod, "loginMethod");
        Map<String, DeviceConfig> map = this.deviceConfigMap;
        Locale locale = Locale.ROOT;
        String lowerCase = platform.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        DeviceConfig deviceConfig = map.get(lowerCase);
        if (deviceConfig == null) {
            return false;
        }
        AccountPermissions accountPermissions = AccountPermissions.INSTANCE;
        List<AccountPermissionItem> permissions = deviceConfig.getPermissions();
        String lowerCase2 = loginMethod.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        return accountPermissions.hasLoginPermission(permissions, lowerCase2);
    }

    public final void setChannelAuthMap(@NotNull Map<String, List<String>> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.channelAuthMap = map;
    }

    public final void setChannelsFeatureMap(@NotNull Map<String, ChannelsFeatureConfig> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.channelsFeatureMap = map;
    }

    public final void setDeviceConfigMap(@NotNull Map<String, DeviceConfig> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.deviceConfigMap = map;
    }

    public final void setLoginConfigMap(@NotNull Map<String, LoginConfig> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.loginConfigMap = map;
    }

    public final void setStatistChannels(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.statistChannels = list;
    }
}
