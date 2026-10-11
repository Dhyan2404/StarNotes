package com.onyx.android.sdk.data.model.p028v2;

import com.couchbase.lite.internal.core.C4Replicator;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\b\u0016\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u001b\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0006R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/data/model/v2/BaseAuthAccount;", "Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;", "()V", C4Replicator.REPLICATOR_AUTH_USER_NAME, "", "password", "(Ljava/lang/String;Ljava/lang/String;)V", "getPassword", "()Ljava/lang/String;", "setPassword", "(Ljava/lang/String;)V", "getUsername", "setUsername", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class BaseAuthAccount extends NeoAccountBase {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private String password;

    @Nullable
    private String username;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/model/v2/BaseAuthAccount$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/data/model/v2/BaseAuthAccount;", C4Replicator.REPLICATOR_AUTH_USER_NAME, "", "password", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final BaseAuthAccount create(@Nullable String username, @Nullable String password) {
            BaseAuthAccount baseAuthAccount = new BaseAuthAccount();
            baseAuthAccount.setUsername(username);
            baseAuthAccount.setPassword(password);
            return baseAuthAccount;
        }

        private Companion() {
        }
    }

    public BaseAuthAccount() {
    }

    @Nullable
    public final String getPassword() {
        return this.password;
    }

    @Nullable
    public final String getUsername() {
        return this.username;
    }

    public final void setPassword(@Nullable String str) {
        this.password = str;
    }

    public final void setUsername(@Nullable String str) {
        this.username = str;
    }

    public BaseAuthAccount(@Nullable String str, @Nullable String str2) {
        this.username = str;
        this.password = str2;
    }
}
