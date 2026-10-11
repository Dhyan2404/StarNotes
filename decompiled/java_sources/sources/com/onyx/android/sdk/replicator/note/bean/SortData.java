package com.onyx.android.sdk.replicator.note.bean;

import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000e¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/SortData;", "", "()V", "contentIds", "", "", "getContentIds", "()Ljava/util/List;", "setContentIds", "(Ljava/util/List;)V", CouchFieldKey.KEY_FILTER_ID, "getFilterId", "()Ljava/lang/String;", "setFilterId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_SUB_FILTER_ID, "getSubFilterId", "setSubFilterId", "isEmpty", "", "toCBQueryArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "toCBQueryArgsWithContentIds", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SortData {

    @NotNull
    private String filterId = "";

    @NotNull
    private String subFilterId = "";

    @NotNull
    private List<String> contentIds = new ArrayList();

    @NotNull
    public final List<String> getContentIds() {
        return this.contentIds;
    }

    @NotNull
    public final String getFilterId() {
        return this.filterId;
    }

    @NotNull
    public final String getSubFilterId() {
        return this.subFilterId;
    }

    public final boolean isEmpty() {
        return this.contentIds.isEmpty();
    }

    public final void setContentIds(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.contentIds = list;
    }

    public final void setFilterId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.filterId = str;
    }

    public final void setSubFilterId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.subFilterId = str;
    }

    @NotNull
    public final CBQueryArgs toCBQueryArgs() {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_FILTER_ID, this.filterId)).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_SUB_FILTER_ID, this.subFilterId));
    }

    @NotNull
    public final CBQueryArgs toCBQueryArgsWithContentIds() {
        CBQueryArgs cBQueryArgs = toCBQueryArgs();
        if (!isEmpty()) {
            cBQueryArgs.andWith(CouchUtils.INSTANCE.inExpression("contentId", this.contentIds));
        }
        return cBQueryArgs;
    }
}
