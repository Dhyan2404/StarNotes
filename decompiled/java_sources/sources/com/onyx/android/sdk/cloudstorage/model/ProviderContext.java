package com.onyx.android.sdk.cloudstorage.model;

import com.onyx.android.sdk.cloudstorage.common.utils.CloudStorageMMKVHelper;
import com.onyx.android.sdk.data.common.data.ProviderCertificate;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u0000 $2\u00020\u0001:\u0001$B\u0007¢\u0006\u0004\b\"\u0010#R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR$\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "", "", "a", Constants.STRING_SIG, "getKey", "()Ljava/lang/String;", "setKey", "(Ljava/lang/String;)V", "key", "b", "getSecret", "setSecret", "secret", "c", "getClientID", "setClientID", "clientID", Constants.LOCALE_SIG, "d", Constants.LOCALE_SIG, "getLocale", "()Ljava/util/Locale;", "setLocale", "(Ljava/util/Locale;)V", "locale", "", "e", Constants.HASIDCALL_INDEX_SIG, "getSandbox", Constants.BOOLEAN_VALUE_SIG, "setSandbox", "(Z)V", "sandbox", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class ProviderContext {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String key;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String secret;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String clientID;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public Locale locale;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean sandbox;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext$Companion;", "", "()V", "createProviderContext", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "certificates", "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes7.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Provider.values().length];
                try {
                    iArr[Provider.EVER_NOTE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Provider.YNOTE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Provider.DROP_BOX.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[Provider.GOOGLE_DRIVE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[Provider.ONE_DRIVE.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[Provider.BAIDU_YUN.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[Provider.HUAWEI_YUN.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[Provider.ALI_YUN.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[Provider.UNKNOWN.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr[Provider.WEBDAV.ordinal()] = 10;
                } catch (NoSuchFieldError unused10) {
                }
                try {
                    iArr[Provider.ONYX_NOTE.ordinal()] = 11;
                } catch (NoSuchFieldError unused11) {
                }
                try {
                    iArr[Provider.NUT_STORE.ordinal()] = 12;
                } catch (NoSuchFieldError unused12) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ProviderContext createProviderContext(@NotNull Provider provider, @NotNull ProviderCertificate.Certificate certificates) {
            Intrinsics.checkNotNullParameter(provider, "provider");
            Intrinsics.checkNotNullParameter(certificates, "certificates");
            switch (WhenMappings.$EnumSwitchMapping$0[provider.ordinal()]) {
                case 1:
                    ProviderContext providerContext = new ProviderContext();
                    providerContext.setKey(certificates.getKey());
                    providerContext.setSecret(certificates.getSecret());
                    providerContext.setLocale(Locale.getDefault());
                    providerContext.setSandbox(false);
                    return providerContext;
                case 2:
                case 3:
                    ProviderContext providerContext2 = new ProviderContext();
                    providerContext2.setKey(certificates.getKey());
                    providerContext2.setSecret(certificates.getSecret());
                    return providerContext2;
                case 4:
                    String extraInfo = certificates.getExtraInfo();
                    if (extraInfo != null) {
                        CloudStorageMMKVHelper.INSTANCE.saveGoogleDriveClientInfo(extraInfo);
                    }
                    ProviderContext providerContext3 = new ProviderContext();
                    providerContext3.setClientID(certificates.getClientID());
                    return providerContext3;
                case 5:
                case 6:
                case 7:
                case 8:
                    ProviderContext providerContext4 = new ProviderContext();
                    providerContext4.setClientID(certificates.getClientID());
                    providerContext4.setSecret(certificates.getSecret());
                    return providerContext4;
                case 9:
                case 10:
                case 11:
                case 12:
                    ProviderContext providerContext5 = new ProviderContext();
                    providerContext5.setClientID(certificates.getClientID());
                    return providerContext5;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        public Companion() {
        }
    }

    @Nullable
    public final String getClientID() {
        return this.clientID;
    }

    @Nullable
    public final String getKey() {
        return this.key;
    }

    @Nullable
    public final Locale getLocale() {
        return this.locale;
    }

    public final boolean getSandbox() {
        return this.sandbox;
    }

    @Nullable
    public final String getSecret() {
        return this.secret;
    }

    public final void setClientID(@Nullable String str) {
        this.clientID = str;
    }

    public final void setKey(@Nullable String str) {
        this.key = str;
    }

    public final void setLocale(@Nullable Locale locale) {
        this.locale = locale;
    }

    public final void setSandbox(boolean z) {
        this.sandbox = z;
    }

    public final void setSecret(@Nullable String str) {
        this.secret = str;
    }
}
