package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.utils;

import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Authenticator;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u000f\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenAuthenticator;", "Lokhttp3/Authenticator;", "Lokhttp3/Route;", "route", "Lokhttp3/Response;", AbstractLogger.RESPONSE, "Lokhttp3/Request;", "authenticate", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", CouchFieldKey.KEY_PROVIDER, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class RefreshTokenAuthenticator implements Authenticator {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final HuaweiYunProvider provider;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ(\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0006J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\f\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenAuthenticator$Companion;", "", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", CouchFieldKey.KEY_PROVIDER, "Lokhttp3/Response;", AbstractLogger.RESPONSE, "Lio/reactivex/rxjava3/functions/Consumer;", "onNext", "Lokhttp3/Request;", "refreshToken", "", "b", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final Request m32735a(HuaweiYunProvider provider, Response response) {
            Request.Builder newBuilder = response.request().newBuilder();
            newBuilder.removeHeader("Authorization");
            newBuilder.header("Authorization", provider.getBearAccessToken());
            return newBuilder.build();
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0014 A[Catch: Exception -> 0x0062, TRY_LEAVE, TryCatch #0 {Exception -> 0x0062, blocks: (B:3:0x0001, B:5:0x0008, B:10:0x0014, B:12:0x0018, B:14:0x003f, B:17:0x004e, B:18:0x0057, B:19:0x0058, B:20:0x0061), top: B:2:0x0001 }] */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0058 A[Catch: Exception -> 0x0062, TryCatch #0 {Exception -> 0x0062, blocks: (B:3:0x0001, B:5:0x0008, B:10:0x0014, B:12:0x0018, B:14:0x003f, B:17:0x004e, B:18:0x0057, B:19:0x0058, B:20:0x0061), top: B:2:0x0001 }] */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean m32736b(com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider r7) {
            /*
                r6 = this;
                r6 = 0
                java.lang.String r0 = r7.getRefreshToken()     // Catch: java.lang.Exception -> L62
                r1 = 1
                if (r0 == 0) goto L11
                int r2 = r0.length()     // Catch: java.lang.Exception -> L62
                if (r2 != 0) goto Lf
                goto L11
            Lf:
                r2 = r6
                goto L12
            L11:
                r2 = r1
            L12:
                if (r2 != 0) goto L58
                com.onyx.android.sdk.base.utils.Debug r2 = com.onyx.android.sdk.base.utils.Debug.INSTANCE     // Catch: java.lang.Exception -> L62
                java.lang.Class<com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider> r3 = com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider.class
                java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L62
                r4.<init>()     // Catch: java.lang.Exception -> L62
                java.lang.String r5 = "refresh token:"
                r4.append(r5)     // Catch: java.lang.Exception -> L62
                r4.append(r0)     // Catch: java.lang.Exception -> L62
                java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L62
                java.lang.Object[] r5 = new java.lang.Object[r6]     // Catch: java.lang.Exception -> L62
                r2.m32035d(r3, r4, r5)     // Catch: java.lang.Exception -> L62
                com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunRefreshTokenRequest r4 = new com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunRefreshTokenRequest     // Catch: java.lang.Exception -> L62
                r4.<init>(r7, r0)     // Catch: java.lang.Exception -> L62
                com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunTokenResponse r0 = r4.execute()     // Catch: java.lang.Exception -> L62
                com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunTokenResponse$Companion r4 = com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunTokenResponse.INSTANCE     // Catch: java.lang.Exception -> L62
                boolean r4 = r4.isValid(r0)     // Catch: java.lang.Exception -> L62
                if (r4 == 0) goto L4e
                r7.setDriveToken(r0)     // Catch: java.lang.Exception -> L62
                r7.saveCredential(r0)     // Catch: java.lang.Exception -> L62
                java.lang.String r0 = "huaweiyun drive refresh token success"
                java.lang.Object[] r4 = new java.lang.Object[r6]     // Catch: java.lang.Exception -> L62
                r2.m32052i(r3, r0, r4)     // Catch: java.lang.Exception -> L62
                r6 = r1
                goto L8e
            L4e:
                com.onyx.android.sdk.cloudstorage.common.exception.TokenExpiredException r0 = new com.onyx.android.sdk.cloudstorage.common.exception.TokenExpiredException     // Catch: java.lang.Exception -> L62
                com.onyx.android.sdk.data.config.cloudnote.Provider r1 = r7.getProviderType()     // Catch: java.lang.Exception -> L62
                r0.<init>(r1)     // Catch: java.lang.Exception -> L62
                throw r0     // Catch: java.lang.Exception -> L62
            L58:
                com.onyx.android.sdk.cloudstorage.common.exception.TokenExpiredException r0 = new com.onyx.android.sdk.cloudstorage.common.exception.TokenExpiredException     // Catch: java.lang.Exception -> L62
                com.onyx.android.sdk.data.config.cloudnote.Provider r1 = r7.getProviderType()     // Catch: java.lang.Exception -> L62
                r0.<init>(r1)     // Catch: java.lang.Exception -> L62
                throw r0     // Catch: java.lang.Exception -> L62
            L62:
                r0 = move-exception
                com.onyx.android.sdk.data.common.exception.CloudNoteException$Companion r1 = com.onyx.android.sdk.data.common.exception.CloudNoteException.INSTANCE
                boolean r1 = r1.isTokenInvalid(r0)
                if (r1 == 0) goto L6e
                r7.onProviderAuthFail()
            L6e:
                com.onyx.android.sdk.base.utils.Debug r1 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
                java.lang.Class r7 = r7.getClass()
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                com.onyx.android.sdk.data.config.cloudnote.Provider r3 = com.onyx.android.sdk.data.config.cloudnote.Provider.HUAWEI_YUN
                java.lang.String r3 = r3.getTitle()
                r2.append(r3)
                java.lang.String r3 = " refresh authentication"
                r2.append(r3)
                java.lang.String r2 = r2.toString()
                r1.m32043e(r7, r2, r0)
            L8e:
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.utils.RefreshTokenAuthenticator.Companion.m32736b(com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider):boolean");
        }

        @Nullable
        public final Request refreshToken(@NotNull HuaweiYunProvider provider, @NotNull Response response, @Nullable Consumer<Object> onNext) {
            Intrinsics.checkNotNullParameter(provider, "provider");
            Intrinsics.checkNotNullParameter(response, "response");
            if (!m32736b(provider)) {
                return null;
            }
            if (onNext != null) {
                try {
                    onNext.accept(provider);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            return m32735a(provider, response);
        }

        public Companion() {
        }
    }

    public RefreshTokenAuthenticator(@NotNull HuaweiYunProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.provider = provider;
    }

    @Override // okhttp3.Authenticator
    @Nullable
    public Request authenticate(@Nullable Route route, @NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        return INSTANCE.refreshToken(this.provider, response, null);
    }
}
