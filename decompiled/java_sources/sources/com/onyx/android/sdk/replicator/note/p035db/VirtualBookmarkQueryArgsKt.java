package com.onyx.android.sdk.replicator.note.p035db;

import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\u001a\u0010\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u001a\u0014\u0010\u0004\u001a\u00020\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006\u001a\u0014\u0010\u0007\u001a\u00020\u00012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006¨\u0006\t"}, m61528d2 = {"loadEnabledBookmarkListQuery", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "keyword", "", "loadVirtualBookmarkById", "idList", "", "loadVirtualBookmarkByPageId", "pageIdList", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class VirtualBookmarkQueryArgsKt {
    @NotNull
    public static final CBQueryArgs loadEnabledBookmarkListQuery(@NotNull String keyword) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs varargOrdering = cBQueryArgs.andWith(couchUtils.equalExpression("status", 0)).setVarargOrdering(couchUtils.getOrdering("pageIndex", true));
        trim = StringsKt__StringsKt.trim((CharSequence) keyword);
        if (StringKt.isNotBlank(trim.toString())) {
            List singletonList = Collections.singletonList("title");
            Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
            varargOrdering.andWith(CouchUtils.orLikeExpression$default(couchUtils, keyword, singletonList, null, false, 12, null));
        }
        return varargOrdering;
    }

    public static /* synthetic */ CBQueryArgs loadEnabledBookmarkListQuery$default(String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return loadEnabledBookmarkListQuery(str);
    }

    @NotNull
    public static final CBQueryArgs loadVirtualBookmarkById(@NotNull Collection<String> idList) {
        List list;
        Intrinsics.checkNotNullParameter(idList, "idList");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        list = CollectionsKt___CollectionsKt.toList(idList);
        return cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, list));
    }

    @NotNull
    public static final CBQueryArgs loadVirtualBookmarkByPageId(@NotNull Collection<String> pageIdList) {
        List list;
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        list = CollectionsKt___CollectionsKt.toList(pageIdList);
        return cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_PAGE_ID, list));
    }
}
