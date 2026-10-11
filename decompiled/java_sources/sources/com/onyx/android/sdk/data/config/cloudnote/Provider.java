package com.onyx.android.sdk.data.config.cloudnote;

import android.content.Context;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.common.data.ProviderCertificate;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.util.EnumMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import onyx.org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.EnumUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0013\b\u0086\u0081\u0002\u0018\u0000 '2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001'B!\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0003J\u0006\u0010\u0017\u001a\u00020\u0000J\u0006\u0010\u0018\u001a\u00020\u0000J\u0006\u0010\u0019\u001a\u00020\u0000J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005R\u0011\u0010\t\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\f\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\nR\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011j\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "", "title", "", "typeValue", "", "isPageCursorProvider", "", "(Ljava/lang/String;ILjava/lang/String;IZ)V", "isDocOnly", Constants.BOOLEAN_VALUE_SIG, "isNoteAndDoc", "isNoteOnly", "providerType", "getTitle", "()Ljava/lang/String;", "getTypeValue", "()I", "createDefaultCertificate", "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;", "ensureCreateRootPath", "", "getProviderRootPath", "setDocOnly", "setNoteAndDoc", "setNoteOnly", "setProviderType", "EVER_NOTE", "YNOTE", "DROP_BOX", "GOOGLE_DRIVE", "BAIDU_YUN", "ONE_DRIVE", "ALI_YUN", "HUAWEI_YUN", "ONYX_NOTE", "NUT_STORE", "WEBDAV", HwrRecognizerConstant.RECOGNIZER_UNKNOWN, "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class Provider {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Provider[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final int DOC_ONLY = 2;
    public static final int NOTE_AND_DOC = 3;
    public static final int NOTE_ONLY = 1;
    private final boolean isPageCursorProvider;
    private int providerType;

    @NotNull
    private final String title;
    private final int typeValue;
    public static final Provider EVER_NOTE = new Provider("EVER_NOTE", 0) { // from class: com.onyx.android.sdk.data.config.cloudnote.Provider.EVER_NOTE
        {
            String str = "evernote";
            int i = 1;
            boolean z = false;
            int i2 = 4;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // com.onyx.android.sdk.data.config.cloudnote.Provider
        @NotNull
        public ProviderCertificate.Certificate createDefaultCertificate() {
            ProviderCertificate.Certificate certificate = new ProviderCertificate.Certificate(getTitle());
            certificate.setKey(ConfigConstant.EVERNOTE_CONSUMER_KEY);
            certificate.setSecret(ConfigConstant.EVERNOTE_CONSUMER_SECRET);
            return certificate;
        }
    };
    public static final Provider YNOTE = new Provider("YNOTE", 1) { // from class: com.onyx.android.sdk.data.config.cloudnote.Provider.YNOTE
        {
            String str = "youdao";
            int i = 2;
            boolean z = false;
            int i2 = 4;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // com.onyx.android.sdk.data.config.cloudnote.Provider
        @NotNull
        public ProviderCertificate.Certificate createDefaultCertificate() {
            ProviderCertificate.Certificate certificate = new ProviderCertificate.Certificate(getTitle());
            certificate.setKey(ConfigConstant.YNOTE_CONSUMER_KEY);
            certificate.setSecret(ConfigConstant.YNOTE_CONSUMER_SECRET);
            return certificate;
        }
    };
    public static final Provider DROP_BOX = new Provider("DROP_BOX", 2) { // from class: com.onyx.android.sdk.data.config.cloudnote.Provider.DROP_BOX
        {
            String str = "dropbox";
            int i = 3;
            boolean z = true;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // com.onyx.android.sdk.data.config.cloudnote.Provider
        @NotNull
        public ProviderCertificate.Certificate createDefaultCertificate() {
            ProviderCertificate.Certificate certificate = new ProviderCertificate.Certificate(getTitle());
            certificate.setKey(ConfigConstant.DROPBOX_CONSUMER_KEY);
            certificate.setSecret(ConfigConstant.DROPBOX_CONSUMER_SECRET);
            return certificate;
        }
    };
    public static final Provider GOOGLE_DRIVE = new Provider("GOOGLE_DRIVE", 3) { // from class: com.onyx.android.sdk.data.config.cloudnote.Provider.GOOGLE_DRIVE
        {
            String str = "googledrive";
            int i = 5;
            boolean z = true;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // com.onyx.android.sdk.data.config.cloudnote.Provider
        @NotNull
        public ProviderCertificate.Certificate createDefaultCertificate() {
            ProviderCertificate.Certificate certificate = new ProviderCertificate.Certificate(getTitle());
            certificate.setExtraInfo(ConfigConstant.GOOGLE_DRIVE_CLIENT_INFO);
            return certificate;
        }
    };
    public static final Provider BAIDU_YUN = new Provider("BAIDU_YUN", 4) { // from class: com.onyx.android.sdk.data.config.cloudnote.Provider.BAIDU_YUN
        {
            String str = "baidu_yun";
            int i = 6;
            boolean z = false;
            int i2 = 4;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // com.onyx.android.sdk.data.config.cloudnote.Provider
        @NotNull
        public ProviderCertificate.Certificate createDefaultCertificate() {
            ProviderCertificate.Certificate certificate = new ProviderCertificate.Certificate(getTitle());
            certificate.setClientID(ConfigConstant.BAIDU_YUN_CLIENT_ID);
            return certificate;
        }
    };
    public static final Provider ONE_DRIVE = new Provider("ONE_DRIVE", 5) { // from class: com.onyx.android.sdk.data.config.cloudnote.Provider.ONE_DRIVE
        {
            String str = "onedrive";
            int i = 7;
            boolean z = true;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // com.onyx.android.sdk.data.config.cloudnote.Provider
        @NotNull
        public ProviderCertificate.Certificate createDefaultCertificate() {
            ProviderCertificate.Certificate certificate = new ProviderCertificate.Certificate(getTitle());
            certificate.setClientID(ConfigConstant.ONEDRIVE_CLIENT_ID);
            certificate.setSecret(ConfigConstant.ONEDRIVE_CLIENT_SECRET);
            return certificate;
        }
    };
    public static final Provider ALI_YUN = new Provider("ALI_YUN", 6) { // from class: com.onyx.android.sdk.data.config.cloudnote.Provider.ALI_YUN
        {
            String str = "ali_yun";
            int i = 10;
            boolean z = true;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // com.onyx.android.sdk.data.config.cloudnote.Provider
        @NotNull
        public ProviderCertificate.Certificate createDefaultCertificate() {
            ProviderCertificate.Certificate certificate = new ProviderCertificate.Certificate(getTitle());
            certificate.setClientID(ConfigConstant.ALIYUN_CLIENT_ID);
            certificate.setSecret(ConfigConstant.ALIYUN_CLIENT_SECRET);
            return certificate;
        }
    };
    public static final Provider HUAWEI_YUN = new Provider("HUAWEI_YUN", 7) { // from class: com.onyx.android.sdk.data.config.cloudnote.Provider.HUAWEI_YUN
        {
            String str = "huawei_yun";
            int i = 11;
            boolean z = true;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // com.onyx.android.sdk.data.config.cloudnote.Provider
        @NotNull
        public ProviderCertificate.Certificate createDefaultCertificate() {
            ProviderCertificate.Certificate certificate = new ProviderCertificate.Certificate(getTitle());
            certificate.setClientID(ConfigConstant.HUAWEIYUN_CLIENT_ID);
            certificate.setSecret(ConfigConstant.HUAWEIYUN_CLIENT_SECRET);
            return certificate;
        }
    };
    public static final Provider ONYX_NOTE = new Provider("ONYX_NOTE", 8, "onyx", 0, false, 4, null);
    public static final Provider NUT_STORE = new Provider("NUT_STORE", 9, "nut_store", 8, false, 4, null);
    public static final Provider WEBDAV = new Provider("WEBDAV", 10, "webdav", 9, false, 4, null);
    public static final Provider UNKNOWN = new Provider(HwrRecognizerConstant.RECOGNIZER_UNKNOWN, 11, "unknown", 99, false, 4, null);

    @Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0010J\u0016\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0010J\u0016\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\bJ\u0016\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0004J\u001a\u0010\u0019\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u001a\u001a\u0004\u0018\u00010\u0010J\u000e\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0016\u001a\u00020\bJ\u000e\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u0016\u001a\u00020\bJ\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\b0!J\u000e\u0010\"\u001a\u00020\b2\u0006\u0010#\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00040\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;", "", "()V", "DOC_ONLY", "", "NOTE_AND_DOC", "NOTE_ONLY", "defaultProvider", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "getDefaultProvider", "()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "providerNameMap", "", "getProviderNameMap", "()Ljava/util/Map;", "getAccountIdFromPath", "", "path", "getNameByPath", "applicationContext", "Landroid/content/Context;", "getNameByProvider", CouchFieldKey.KEY_PROVIDER, "getNameResIdByProvider", "defaultValue", "getProviderByTitle", "title", "getProviderFromPath", "isFileInCloudStoragePath", "", "isThirdProvider", "notSupportFileInRoot", "notSupportMultiAccountProviders", "", "providerByName", "name", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final String getAccountIdFromPath(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            Provider providerFromPath = getProviderFromPath(path);
            StringBuilder sb = new StringBuilder();
            sb.append(providerFromPath.getTitle());
            String str = File.separator;
            sb.append(str);
            return StringUtils.substringBefore(StringUtils.substringAfter(path, sb.toString()), str);
        }

        @NotNull
        public final Provider getDefaultProvider() {
            return Intrinsics.areEqual(Locale.getDefault().getDisplayLanguage(), Locale.CHINESE.getDisplayLanguage()) ? Provider.BAIDU_YUN : Provider.DROP_BOX;
        }

        @NotNull
        public final String getNameByPath(@NotNull Context applicationContext, @NotNull String path) {
            Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
            Intrinsics.checkNotNullParameter(path, "path");
            return getNameByProvider(applicationContext, getProviderFromPath(path));
        }

        @NotNull
        public final String getNameByProvider(@NotNull Context applicationContext, @NotNull Provider provider) {
            Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
            Intrinsics.checkNotNullParameter(provider, "provider");
            Integer num = getProviderNameMap().get(provider);
            if (num == null) {
                return "";
            }
            String string = applicationContext.getString(num.intValue());
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }

        public final int getNameResIdByProvider(@NotNull Provider provider, int defaultValue) {
            Intrinsics.checkNotNullParameter(provider, "provider");
            Integer num = getProviderNameMap().get(provider);
            if (num == null) {
                num = Integer.valueOf(defaultValue);
            }
            return num.intValue();
        }

        @Nullable
        public final Provider getProviderByTitle(@NotNull Context applicationContext, @Nullable String title) {
            Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
            for (Map.Entry<Provider, Integer> entry : getProviderNameMap().entrySet()) {
                Provider key = entry.getKey();
                if (StringUtils.equals(applicationContext.getString(entry.getValue().intValue()), title)) {
                    return key;
                }
            }
            return null;
        }

        @NotNull
        public final Provider getProviderFromPath(@NotNull String path) {
            boolean startsWith$default;
            Intrinsics.checkNotNullParameter(path, "path");
            for (Provider provider : Provider.values()) {
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default(path, provider.getProviderRootPath(), false, 2, null);
                if (startsWith$default) {
                    return provider;
                }
            }
            return Provider.BAIDU_YUN;
        }

        @NotNull
        public final Map<Provider, Integer> getProviderNameMap() {
            EnumMap enumMap = new EnumMap(Provider.class);
            enumMap.put((EnumMap) Provider.ONYX_NOTE, (Provider) Integer.valueOf(C7373R.string.onyx_async_name));
            enumMap.put((EnumMap) Provider.EVER_NOTE, (Provider) Integer.valueOf(C7373R.string.evernote_async_name));
            enumMap.put((EnumMap) Provider.DROP_BOX, (Provider) Integer.valueOf(C7373R.string.drop_box_async_name));
            enumMap.put((EnumMap) Provider.YNOTE, (Provider) Integer.valueOf(C7373R.string.ynote_async_name));
            enumMap.put((EnumMap) Provider.GOOGLE_DRIVE, (Provider) Integer.valueOf(C7373R.string.google_drive_async_name));
            enumMap.put((EnumMap) Provider.BAIDU_YUN, (Provider) Integer.valueOf(C7373R.string.baidu_cloud_async_name));
            enumMap.put((EnumMap) Provider.ONE_DRIVE, (Provider) Integer.valueOf(C7373R.string.one_driver_async_name));
            enumMap.put((EnumMap) Provider.NUT_STORE, (Provider) Integer.valueOf(C7373R.string.nut_store_async_name));
            enumMap.put((EnumMap) Provider.WEBDAV, (Provider) Integer.valueOf(C7373R.string.webdav_cloud_async_name));
            enumMap.put((EnumMap) Provider.ALI_YUN, (Provider) Integer.valueOf(C7373R.string.ali_cloud_drive_async_name));
            enumMap.put((EnumMap) Provider.HUAWEI_YUN, (Provider) Integer.valueOf(C7373R.string.huawei_cloud_drive_async_name));
            return enumMap;
        }

        public final boolean isFileInCloudStoragePath(@NotNull String path) {
            boolean startsWith$default;
            Intrinsics.checkNotNullParameter(path, "path");
            for (Provider provider : Provider.values()) {
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default(path, provider.getProviderRootPath(), false, 2, null);
                if (startsWith$default) {
                    return true;
                }
            }
            return false;
        }

        public final boolean isThirdProvider(@NotNull Provider provider) {
            Intrinsics.checkNotNullParameter(provider, "provider");
            return provider != Provider.ONYX_NOTE;
        }

        public final boolean notSupportFileInRoot(@NotNull Provider provider) {
            Intrinsics.checkNotNullParameter(provider, "provider");
            return provider == Provider.NUT_STORE;
        }

        @NotNull
        public final List<Provider> notSupportMultiAccountProviders() {
            List<Provider> listOf;
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Provider[]{Provider.EVER_NOTE, Provider.ONYX_NOTE});
            return listOf;
        }

        @NotNull
        public final Provider providerByName(@NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            for (Provider provider : Provider.values()) {
                if (StringUtils.equals(name, provider.getTitle())) {
                    return provider;
                }
            }
            String upperCase = name.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
            Provider provider2 = (Provider) EnumUtils.getEnum(Provider.class, upperCase);
            return provider2 == null ? Provider.YNOTE : provider2;
        }

        private Companion() {
        }
    }

    private static final /* synthetic */ Provider[] $values() {
        return new Provider[]{EVER_NOTE, YNOTE, DROP_BOX, GOOGLE_DRIVE, BAIDU_YUN, ONE_DRIVE, ALI_YUN, HUAWEI_YUN, ONYX_NOTE, NUT_STORE, WEBDAV, UNKNOWN};
    }

    static {
        Provider[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    public /* synthetic */ Provider(String str, int i, String str2, int i2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, str2, i2, z);
    }

    @NotNull
    public static EnumEntries<Provider> getEntries() {
        return $ENTRIES;
    }

    public static Provider valueOf(String str) {
        return (Provider) Enum.valueOf(Provider.class, str);
    }

    public static Provider[] values() {
        return (Provider[]) $VALUES.clone();
    }

    @NotNull
    public ProviderCertificate.Certificate createDefaultCertificate() {
        return new ProviderCertificate.Certificate(this.title);
    }

    public final void ensureCreateRootPath() {
        FileUtils.forceMkdir(new File(getProviderRootPath()));
    }

    @NotNull
    public final String getProviderRootPath() {
        SupportAppName supportAppName = SupportAppName.INSTANCE;
        FileUtils.forceMkdir(supportAppName.getNETDISK_PATH());
        StringBuilder sb = new StringBuilder();
        File netdisk_path = supportAppName.getNETDISK_PATH();
        Intrinsics.checkNotNull(netdisk_path);
        sb.append(netdisk_path.getAbsolutePath());
        sb.append(File.separator);
        sb.append(this.title);
        return sb.toString();
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final int getTypeValue() {
        return this.typeValue;
    }

    public final boolean isDocOnly() {
        return this.providerType == 2;
    }

    public final boolean isNoteAndDoc() {
        return this.providerType == 3;
    }

    public final boolean isNoteOnly() {
        return this.providerType == 1;
    }

    /* renamed from: isPageCursorProvider, reason: from getter */
    public final boolean getIsPageCursorProvider() {
        return this.isPageCursorProvider;
    }

    @NotNull
    public final Provider setDocOnly() {
        return setProviderType(2);
    }

    @NotNull
    public final Provider setNoteAndDoc() {
        return setProviderType(3);
    }

    @NotNull
    public final Provider setNoteOnly() {
        return setProviderType(1);
    }

    @NotNull
    public final Provider setProviderType(int providerType) {
        this.providerType = providerType;
        return this;
    }

    private Provider(String str, int i, String str2, int i2, boolean z) {
        this.title = str2;
        this.typeValue = i2;
        this.isPageCursorProvider = z;
        this.providerType = 1;
    }

    public /* synthetic */ Provider(String str, int i, String str2, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, str2, i2, (i3 & 4) != 0 ? false : z);
    }
}
