package com.onyx.android.sdk.replicator.note.p035db.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "contentId", "", "getContentId", "()Ljava/lang/String;", "setContentId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_FILTER_ID, "getFilterId", "setFilterId", CouchFieldKey.KEY_ORDER_INDEX, "", "getOrderIndex", "()F", "setOrderIndex", "(F)V", CouchFieldKey.KEY_SUB_FILTER_ID, "getSubFilterId", "setSubFilterId", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SortModel extends BaseReplicatorModel {

    @NotNull
    private String contentId = "";

    @NotNull
    private String filterId = "";

    @NotNull
    private String subFilterId = "";
    private float orderIndex = -1.0f;

    @NotNull
    public final String getContentId() {
        return this.contentId;
    }

    @NotNull
    public final String getFilterId() {
        return this.filterId;
    }

    public final float getOrderIndex() {
        return this.orderIndex;
    }

    @NotNull
    public final String getSubFilterId() {
        return this.subFilterId;
    }

    public final void setContentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentId = str;
    }

    public final void setFilterId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.filterId = str;
    }

    public final void setOrderIndex(float f) {
        this.orderIndex = f;
    }

    public final void setSubFilterId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.subFilterId = str;
    }
}
