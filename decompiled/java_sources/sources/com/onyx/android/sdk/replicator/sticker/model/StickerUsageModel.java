package com.onyx.android.sdk.replicator.sticker.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/model/StickerUsageModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", CouchFieldKey.KEY_STICKER_ID, "", "getStickerId", "()Ljava/lang/String;", "setStickerId", "(Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class StickerUsageModel extends BaseReplicatorModel {

    @NotNull
    private String stickerId = "";

    @NotNull
    public final String getStickerId() {
        return this.stickerId;
    }

    public final void setStickerId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.stickerId = str;
    }
}
