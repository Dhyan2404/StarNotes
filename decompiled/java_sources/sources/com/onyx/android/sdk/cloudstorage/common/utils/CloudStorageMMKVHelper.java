package com.onyx.android.sdk.cloudstorage.common.utils;

import android.content.Context;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriveTokenResponse;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.common.data.ProviderCertificate;
import com.onyx.android.sdk.data.config.cloudnote.ConfigConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.model.p028v2.WebDAVAuthAccount;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.MMKVCertificate;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0015\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b&\u0010'J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bJ\b\u0010\u000b\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u000e\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\fJ\b\u0010\u000f\u001a\u0004\u0018\u00010\bJ\b\u0010\u0010\u001a\u0004\u0018\u00010\fJ\b\u0010\u0011\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0012\u001a\u00020\bJ\u0016\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u0013R\u0014\u0010\u0019\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0018R\u0014\u0010\u001f\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001e\u0010\u0018R\u0014\u0010!\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b \u0010\u0018R\u0014\u0010#\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\"\u0010\u0018R\u0014\u0010%\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b$\u0010\u0018¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;", "", "Landroid/content/Context;", "context", "", "init", "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;", "getProviderCertificates", "", "clientInfo", "saveGoogleDriveClientInfo", "getGoogleDriveClientInfo", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;", AbstractLogger.RESPONSE, "setOneNoteTokenResponse", "getOneNoteRefreshToken", "getOneNoteTokenResponse", "getOneNoteAccessToken", CouchFieldKey.KEY_PROVIDER_NAME, "Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;", "getWebDAVAuthAccount", LoginAuthConst.ACCOUNT_AUTH, "saveWebDAVAuthAccount", "a", Constants.STRING_SIG, CloudStorageMMKVHelper.BAIDU_YUN_ACCESS_TOKEN_KEY, "b", CloudStorageMMKVHelper.BAIDU_YUN_USER_INFO_KEY, "c", CloudStorageMMKVHelper.ONE_DRIVE_TOKEN_INFO_KEY, "d", CloudStorageMMKVHelper.DROPBOX_CREDENTIAL_KEY, "e", CloudStorageMMKVHelper.ONE_NOTE_TOKEN_INFO_KEY, C6997f.f39671c, CloudStorageMMKVHelper.GOOGLE_DRIVE_CLIENT_KEY, C6998g.f39679a, "WEB_DAV_ACCOUNT_PREFIX", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class CloudStorageMMKVHelper {

    @NotNull
    public static final CloudStorageMMKVHelper INSTANCE = new CloudStorageMMKVHelper();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String BAIDU_YUN_ACCESS_TOKEN_KEY = "BAIDU_YUN_ACCESS_TOKEN_KEY";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String BAIDU_YUN_USER_INFO_KEY = "BAIDU_YUN_USER_INFO_KEY";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String ONE_DRIVE_TOKEN_INFO_KEY = "ONE_DRIVE_TOKEN_INFO_KEY";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final String DROPBOX_CREDENTIAL_KEY = "DROPBOX_CREDENTIAL_KEY";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final String ONE_NOTE_TOKEN_INFO_KEY = "ONE_NOTE_TOKEN_INFO_KEY";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final String GOOGLE_DRIVE_CLIENT_KEY = "GOOGLE_DRIVE_CLIENT_KEY";

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public static final String WEB_DAV_ACCOUNT_PREFIX = "WebDAV_account_";

    @Nullable
    public final String getGoogleDriveClientInfo() {
        return MMKVUtils.INSTANCE.getString(GOOGLE_DRIVE_CLIENT_KEY, ConfigConstant.GOOGLE_DRIVE_CLIENT_INFO);
    }

    @Nullable
    public final String getOneNoteAccessToken() {
        OneDriveTokenResponse oneNoteTokenResponse = getOneNoteTokenResponse();
        if (oneNoteTokenResponse == null) {
            return null;
        }
        return oneNoteTokenResponse.getAccessToken();
    }

    @Nullable
    public final String getOneNoteRefreshToken() {
        OneDriveTokenResponse oneNoteTokenResponse = getOneNoteTokenResponse();
        if (oneNoteTokenResponse == null) {
            return null;
        }
        return oneNoteTokenResponse.getRefreshToken();
    }

    @Nullable
    public final OneDriveTokenResponse getOneNoteTokenResponse() {
        return (OneDriveTokenResponse) JSONUtils.INSTANCE.parseObject(MMKVUtils.INSTANCE.getString(ONE_NOTE_TOKEN_INFO_KEY, ""), OneDriveTokenResponse.class);
    }

    @Nullable
    public final ProviderCertificate getProviderCertificates() {
        return MMKVCertificate.INSTANCE.getProviderCertificates(MMKVCertificate.PROVIDER_CERTIFICATES_KEY);
    }

    @Nullable
    public final WebDAVAuthAccount getWebDAVAuthAccount(@NotNull String providerName) {
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        return (WebDAVAuthAccount) JSONUtils.INSTANCE.parseObject(MMKVUtils.INSTANCE.getString(WEB_DAV_ACCOUNT_PREFIX + providerName, ""), WebDAVAuthAccount.class);
    }

    public final void init(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        MMKVUtils.INSTANCE.init(context);
    }

    public final void saveGoogleDriveClientInfo(@NotNull String clientInfo) {
        Intrinsics.checkNotNullParameter(clientInfo, "clientInfo");
        MMKVUtils.INSTANCE.putString(GOOGLE_DRIVE_CLIENT_KEY, clientInfo);
    }

    public final void saveWebDAVAuthAccount(@NotNull String providerName, @NotNull WebDAVAuthAccount account) {
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        Intrinsics.checkNotNullParameter(account, "account");
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        String str = WEB_DAV_ACCOUNT_PREFIX + providerName;
        String json = JSONUtils.INSTANCE.toJson(account);
        Intrinsics.checkNotNull(json);
        mMKVUtils.putString(str, json);
    }

    public final void setOneNoteTokenResponse(@Nullable OneDriveTokenResponse response) {
        if (response == null) {
            MMKVUtils.INSTANCE.putString(ONE_NOTE_TOKEN_INFO_KEY, "");
            return;
        }
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        String json = JSONUtils.INSTANCE.toJson(response);
        mMKVUtils.putString(ONE_NOTE_TOKEN_INFO_KEY, json != null ? json : "");
    }
}
