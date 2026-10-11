package com.onyx.android.sdk.replicator.note.p035db;

import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0006\u0010\u0003\u001a\u00020\u0001\u001a\u0014\u0010\u0004\u001a\u00020\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¨\u0006\b"}, m61528d2 = {"loadEmptyRevisionIdVirtualPageQuery", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "loadEnabledVirtualPageQuery", "loadValidVirtualPageQuery", "loadVirtualPageById", "idList", "", "", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class VirtualPageQueryArgsKt {
    @NotNull
    public static final CBQueryArgs loadEmptyRevisionIdVirtualPageQuery() {
        return new CBQueryArgs().andWith(CouchUtils.INSTANCE.nullOrEqualExpression(CouchFieldKey.KEY_REVISION_ID, ""));
    }

    @NotNull
    public static final CBQueryArgs loadEnabledVirtualPageQuery() {
        return new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression("status", 0));
    }

    @NotNull
    public static final CBQueryArgs loadValidVirtualPageQuery() {
        return new CBQueryArgs().andWith(CouchUtils.INSTANCE.notEqualExpression("status", 2));
    }

    @NotNull
    public static final CBQueryArgs loadVirtualPageById(@NotNull Collection<String> idList) {
        List list;
        Intrinsics.checkNotNullParameter(idList, "idList");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        list = CollectionsKt___CollectionsKt.toList(idList);
        return cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, list));
    }
}
