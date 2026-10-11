package com.onyx.android.sdk.data.model.p028v2;

import com.couchbase.lite.internal.core.C4Replicator;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u0019\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;", "Lcom/onyx/android/sdk/data/model/v2/BaseAuthAccount;", "()V", "webDAVUrl", "", "isLogin", "", "(Ljava/lang/String;Z)V", Constants.BOOLEAN_VALUE_SIG, "setLogin", "(Z)V", "getWebDAVUrl", "()Ljava/lang/String;", "setWebDAVUrl", "(Ljava/lang/String;)V", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class WebDAVAuthAccount extends BaseAuthAccount {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private boolean isLogin;

    @Nullable
    private String webDAVUrl;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;", C4Replicator.REPLICATOR_AUTH_USER_NAME, "", "password", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final WebDAVAuthAccount create(@Nullable String username, @Nullable String password) {
            WebDAVAuthAccount webDAVAuthAccount = new WebDAVAuthAccount();
            webDAVAuthAccount.setUsername(username);
            webDAVAuthAccount.setPassword(password);
            return webDAVAuthAccount;
        }

        private Companion() {
        }
    }

    public WebDAVAuthAccount() {
        this.isLogin = true;
    }

    @Nullable
    public final String getWebDAVUrl() {
        return this.webDAVUrl;
    }

    /* renamed from: isLogin, reason: from getter */
    public final boolean getIsLogin() {
        return this.isLogin;
    }

    public final void setLogin(boolean z) {
        this.isLogin = z;
    }

    public final void setWebDAVUrl(@Nullable String str) {
        this.webDAVUrl = str;
    }

    public WebDAVAuthAccount(@Nullable String str, boolean z) {
        this.webDAVUrl = str;
        this.isLogin = z;
    }
}
