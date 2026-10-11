package com.onyx.android.sdk.cloudstorage.provider.onedrive.utils;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveClient;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriveTokenResponse;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Authenticator;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0011¢\u0006\u0004\b!\u0010\"J\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\t\u001a\u00020\bH\u0002J\u0012\u0010\f\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\rH\u0002J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0012R$\u0010\u001a\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001b\u0010 \u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001c\u001a\u0004\b\u0014\u0010\u0017¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;", "Lokhttp3/Authenticator;", "Lokhttp3/Route;", "route", "Lokhttp3/Response;", AbstractLogger.RESPONSE, "Lokhttp3/Request;", "authenticate", "", "e", "", "token", "c", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;", "", C6997f.f39671c, "a", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "oneDriveProvider", "b", Constants.STRING_SIG, "getRefreshToken", "()Ljava/lang/String;", "setRefreshToken", "(Ljava/lang/String;)V", "refreshToken", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;", "Lkotlin/Lazy;", "d", "()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;", "oneDriveClient", "accountId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class RefreshTokenAuthenticator implements Authenticator {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OneDriveProvider oneDriveProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String refreshToken;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Lazy oneDriveClient;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Lazy accountId;

    public RefreshTokenAuthenticator(@NotNull OneDriveProvider oneDriveProvider) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(oneDriveProvider, "oneDriveProvider");
        this.oneDriveProvider = oneDriveProvider;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<OneDriveClient>() { // from class: com.onyx.android.sdk.cloudstorage.provider.onedrive.utils.RefreshTokenAuthenticator$oneDriveClient$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final OneDriveClient invoke() {
                OneDriveProvider oneDriveProvider2;
                oneDriveProvider2 = RefreshTokenAuthenticator.this.oneDriveProvider;
                return oneDriveProvider2.getOneDriveClient();
            }
        });
        this.oneDriveClient = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: com.onyx.android.sdk.cloudstorage.provider.onedrive.utils.RefreshTokenAuthenticator$accountId$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                OneDriveProvider oneDriveProvider2;
                oneDriveProvider2 = RefreshTokenAuthenticator.this.oneDriveProvider;
                return oneDriveProvider2.getAccountId();
            }
        });
        this.accountId = lazy2;
    }

    /* renamed from: a */
    public final Request m32784a(Response response) {
        Request.Builder newBuilder = response.request().newBuilder();
        newBuilder.removeHeader("Authorization");
        String oneDriveAccessToken = m32785b().length() == 0 ? null : OneDriverUtils.INSTANCE.getOneDriveAccessToken(m32785b());
        Debug.INSTANCE.m32035d(RefreshTokenAuthenticator.class, response.request().url() + "\n after refresh token, use new accessToken:" + oneDriveAccessToken + "\n for " + m32785b(), new Object[0]);
        newBuilder.header("Authorization", m32786c(oneDriveAccessToken));
        return newBuilder.build();
    }

    @Override // okhttp3.Authenticator
    @Nullable
    public Request authenticate(@Nullable Route route, @NotNull Response response) throws IOException {
        Intrinsics.checkNotNullParameter(response, "response");
        if (m32788e()) {
            return m32784a(response);
        }
        return null;
    }

    /* renamed from: b */
    public final String m32785b() {
        return (String) this.accountId.getValue();
    }

    /* renamed from: c */
    public final String m32786c(String token) {
        return BaseCloudRequest.BEARER_TOKEN_PREFIX + token;
    }

    /* renamed from: d */
    public final OneDriveClient m32787d() {
        return (OneDriveClient) this.oneDriveClient.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0037 A[Catch: Exception -> 0x008a, TryCatch #0 {Exception -> 0x008a, blocks: (B:3:0x0003, B:8:0x001f, B:10:0x0027, B:12:0x002b, B:17:0x0037, B:19:0x0062, B:22:0x0072, B:23:0x007d, B:24:0x007e, B:25:0x0089, B:27:0x0015), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007e A[Catch: Exception -> 0x008a, TryCatch #0 {Exception -> 0x008a, blocks: (B:3:0x0003, B:8:0x001f, B:10:0x0027, B:12:0x002b, B:17:0x0037, B:19:0x0062, B:22:0x0072, B:23:0x007d, B:24:0x007e, B:25:0x0089, B:27:0x0015), top: B:2:0x0003 }] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m32788e() {
        /*
            r7 = this;
            java.lang.Class<com.onyx.android.sdk.cloudstorage.provider.onedrive.utils.RefreshTokenAuthenticator> r0 = com.onyx.android.sdk.cloudstorage.provider.onedrive.utils.RefreshTokenAuthenticator.class
            r1 = 0
            java.lang.String r2 = r7.m32785b()     // Catch: java.lang.Exception -> L8a
            int r2 = r2.length()     // Catch: java.lang.Exception -> L8a
            r3 = 1
            if (r2 != 0) goto L10
            r2 = r3
            goto L11
        L10:
            r2 = r1
        L11:
            if (r2 == 0) goto L15
            r2 = 0
            goto L1f
        L15:
            com.onyx.android.sdk.cloudstorage.provider.onedrive.utils.OneDriverUtils r2 = com.onyx.android.sdk.cloudstorage.provider.onedrive.utils.OneDriverUtils.INSTANCE     // Catch: java.lang.Exception -> L8a
            java.lang.String r4 = r7.m32785b()     // Catch: java.lang.Exception -> L8a
            java.lang.String r2 = r2.getOneDriveRefreshToken(r4)     // Catch: java.lang.Exception -> L8a
        L1f:
            java.lang.String r4 = r7.refreshToken     // Catch: java.lang.Exception -> L8a
            boolean r4 = com.onyx.android.sdk.base.extension.StringKt.isNotBlank(r4)     // Catch: java.lang.Exception -> L8a
            if (r4 == 0) goto L29
            java.lang.String r2 = r7.refreshToken     // Catch: java.lang.Exception -> L8a
        L29:
            if (r2 == 0) goto L34
            int r4 = r2.length()     // Catch: java.lang.Exception -> L8a
            if (r4 != 0) goto L32
            goto L34
        L32:
            r4 = r1
            goto L35
        L34:
            r4 = r3
        L35:
            if (r4 != 0) goto L7e
            com.onyx.android.sdk.base.utils.Debug r4 = com.onyx.android.sdk.base.utils.Debug.INSTANCE     // Catch: java.lang.Exception -> L8a
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L8a
            r5.<init>()     // Catch: java.lang.Exception -> L8a
            java.lang.String r6 = "authenticator refresh token:"
            r5.append(r6)     // Catch: java.lang.Exception -> L8a
            r5.append(r2)     // Catch: java.lang.Exception -> L8a
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L8a
            java.lang.Object[] r6 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L8a
            r4.m32035d(r0, r5, r6)     // Catch: java.lang.Exception -> L8a
            com.onyx.android.sdk.cloudstorage.provider.onedrive.request.OneDriverRefreshTokenRequest r5 = new com.onyx.android.sdk.cloudstorage.provider.onedrive.request.OneDriverRefreshTokenRequest     // Catch: java.lang.Exception -> L8a
            com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider r6 = r7.oneDriveProvider     // Catch: java.lang.Exception -> L8a
            r5.<init>(r6, r2)     // Catch: java.lang.Exception -> L8a
            com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriveTokenResponse r2 = r5.execute()     // Catch: java.lang.Exception -> L8a
            com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriveTokenResponse$Companion r5 = com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriveTokenResponse.INSTANCE     // Catch: java.lang.Exception -> L8a
            boolean r5 = r5.isValid(r2)     // Catch: java.lang.Exception -> L8a
            if (r5 == 0) goto L72
            com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider r5 = r7.oneDriveProvider     // Catch: java.lang.Exception -> L8a
            r5.setDriveToken(r2)     // Catch: java.lang.Exception -> L8a
            r7.m32789f(r2)     // Catch: java.lang.Exception -> L8a
            java.lang.String r2 = "onedrive authenticate refresh token success"
            java.lang.Object[] r5 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L8a
            r4.m32052i(r0, r2, r5)     // Catch: java.lang.Exception -> L8a
            return r3
        L72:
            com.onyx.android.sdk.cloudstorage.common.exception.TokenExpiredException r2 = new com.onyx.android.sdk.cloudstorage.common.exception.TokenExpiredException     // Catch: java.lang.Exception -> L8a
            com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider r3 = r7.oneDriveProvider     // Catch: java.lang.Exception -> L8a
            com.onyx.android.sdk.data.config.cloudnote.Provider r3 = r3.getProviderType()     // Catch: java.lang.Exception -> L8a
            r2.<init>(r3)     // Catch: java.lang.Exception -> L8a
            throw r2     // Catch: java.lang.Exception -> L8a
        L7e:
            com.onyx.android.sdk.cloudstorage.common.exception.TokenExpiredException r2 = new com.onyx.android.sdk.cloudstorage.common.exception.TokenExpiredException     // Catch: java.lang.Exception -> L8a
            com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider r3 = r7.oneDriveProvider     // Catch: java.lang.Exception -> L8a
            com.onyx.android.sdk.data.config.cloudnote.Provider r3 = r3.getProviderType()     // Catch: java.lang.Exception -> L8a
            r2.<init>(r3)     // Catch: java.lang.Exception -> L8a
            throw r2     // Catch: java.lang.Exception -> L8a
        L8a:
            r2 = move-exception
            com.onyx.android.sdk.base.utils.Debug r3 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            com.onyx.android.sdk.data.config.cloudnote.Provider r5 = com.onyx.android.sdk.data.config.cloudnote.Provider.ONE_DRIVE
            java.lang.String r5 = r5.getTitle()
            r4.append(r5)
            java.lang.String r5 = " refresh authentication"
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            r3.m32043e(r0, r4, r2)
            com.onyx.android.sdk.data.common.exception.CloudNoteException$Companion r0 = com.onyx.android.sdk.data.common.exception.CloudNoteException.INSTANCE
            boolean r3 = r0.isOneDriveInvalidGrantError(r2)
            if (r3 != 0) goto Lb5
            boolean r0 = r0.isTokenInvalid(r2)
            if (r0 == 0) goto Lba
        Lb5:
            com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider r7 = r7.oneDriveProvider
            r7.onAuthorizationInvalid()
        Lba:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.cloudstorage.provider.onedrive.utils.RefreshTokenAuthenticator.m32788e():boolean");
    }

    /* renamed from: f */
    public final void m32789f(OneDriveTokenResponse response) {
        OneDriverUtils oneDriverUtils;
        ProviderAccountModel providerAccountModel;
        if ((m32785b().length() == 0) || (providerAccountModel = (oneDriverUtils = OneDriverUtils.INSTANCE).getProviderAccountModel(m32785b())) == null) {
            return;
        }
        providerAccountModel.setAccountCredentialJson(JSONUtils.INSTANCE.toJson(response));
        oneDriverUtils.saveProviderAccount(providerAccountModel);
    }

    @Nullable
    public final String getRefreshToken() {
        return this.refreshToken;
    }

    public final void setRefreshToken(@Nullable String str) {
        this.refreshToken = str;
    }
}
