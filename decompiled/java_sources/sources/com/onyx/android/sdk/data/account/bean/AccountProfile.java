package com.onyx.android.sdk.data.account.bean;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/AccountProfile;", "", "()V", "id", "", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "name", "getName", "setName", CouchFieldKey.KEY_PROVIDER, "getProvider", "setProvider", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AccountProfile {

    @Nullable
    private String id;

    @Nullable
    private String name;

    @Nullable
    private String provider;

    @Nullable
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getProvider() {
        return this.provider;
    }

    /* renamed from: setId, reason: collision with other method in class */
    public final void m72195setId(@Nullable String str) {
        this.id = str;
    }

    /* renamed from: setName, reason: collision with other method in class */
    public final void m72196setName(@Nullable String str) {
        this.name = str;
    }

    /* renamed from: setProvider, reason: collision with other method in class */
    public final void m72197setProvider(@Nullable String str) {
        this.provider = str;
    }

    @NotNull
    public final AccountProfile setId(@Nullable String id) {
        this.id = id;
        return this;
    }

    @NotNull
    public final AccountProfile setName(@Nullable String name) {
        this.name = name;
        return this;
    }

    @NotNull
    public final AccountProfile setProvider(@Nullable String provider) {
        this.provider = provider;
        return this;
    }
}
