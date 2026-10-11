package com.onyx.android.sdk.replicator.productconfig;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000e¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", CouchFieldKey.KEY_CONFIG_STATUS, "", "getConfigStatus", "()I", "setConfigStatus", "(I)V", CouchFieldKey.KEY_CONFIG_TYPE, "", "getConfigType", "()Ljava/lang/String;", "setConfigType", "(Ljava/lang/String;)V", "content", "getContent", "setContent", "key", "getKey", "setKey", "isEmpty", "", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ProductConfigModel extends BaseReplicatorModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final ProductConfigModel Empty = new ProductConfigModel();

    @NotNull
    private String configType = "";
    private int configStatus = 1;

    @NotNull
    private String key = "";

    @NotNull
    private String content = "";

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel$Companion;", "", "()V", "Empty", "Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;", "getEmpty", "()Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ProductConfigModel getEmpty() {
            return ProductConfigModel.Empty;
        }

        public Companion() {
        }
    }

    public final int getConfigStatus() {
        return this.configStatus;
    }

    @NotNull
    public final String getConfigType() {
        return this.configType;
    }

    @NotNull
    public final String getContent() {
        return this.content;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    public final boolean isEmpty() {
        return Intrinsics.areEqual(this, Empty);
    }

    public final void setConfigStatus(int i) {
        this.configStatus = i;
    }

    public final void setConfigType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.configType = str;
    }

    public final void setContent(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.content = str;
    }

    public final void setKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.key = str;
    }
}
