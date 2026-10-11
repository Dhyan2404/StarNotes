package com.onyx.android.sdk.p029db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.data.OnyxNoteModel;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u001a\f\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0002\u001a\u0018\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u001a\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003*\u00020\u00002\u0006\u0010\t\u001a\u00020\b\u001a\u0018\u0010\r\u001a\u00020\u0006*\u00020\u00002\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0003\u001a\n\u0010\u000f\u001a\u00020\u000e*\u00020\u0000¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", "Lcom/couchbase/lite/Collection;", "a", "", "Lcom/onyx/android/sdk/data/OnyxNoteModel;", "list", "", "saveOnyxNoteList", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "cbQueryArgs", "loadOnyxNoteList", "", "idList", "deleteOnyxNoteByIds", "", "loadOnyxNoteCount", "sdk-statistics_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOnyxStatisticNoteProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxStatisticNoteProvider.kt\ncom/onyx/android/sdk/db/OnyxStatisticNoteProviderKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,45:1\n1855#2,2:46\n48#3,5:48\n*S KotlinDebug\n*F\n+ 1 OnyxStatisticNoteProvider.kt\ncom/onyx/android/sdk/db/OnyxStatisticNoteProviderKt\n*L\n28#1:46,2\n33#1:48,5\n*E\n"})
/* loaded from: classes7.dex */
public final class OnyxStatisticNoteProviderKt {
    /* renamed from: a */
    public static final Collection m32980a(OnyxStatisticProvider onyxStatisticProvider) {
        return onyxStatisticProvider.getCouchHolder().ensureCollection(SyncConstant.COLLECTION_PROVIDER_ONYX_STATISTIC_NOTE_MODEL);
    }

    public static final void deleteOnyxNoteByIds(@NotNull OnyxStatisticProvider onyxStatisticProvider, @NotNull List<String> idList) {
        Intrinsics.checkNotNullParameter(onyxStatisticProvider, "<this>");
        Intrinsics.checkNotNullParameter(idList, "idList");
        if (idList.isEmpty()) {
            return;
        }
        CouchCollections.INSTANCE.deleteListByIds(m32980a(onyxStatisticProvider), idList);
    }

    public static final long loadOnyxNoteCount(@NotNull OnyxStatisticProvider onyxStatisticProvider) {
        Intrinsics.checkNotNullParameter(onyxStatisticProvider, "<this>");
        return CouchCollections.INSTANCE.countAll(m32980a(onyxStatisticProvider));
    }

    @NotNull
    public static final List<OnyxNoteModel> loadOnyxNoteList(@NotNull OnyxStatisticProvider onyxStatisticProvider, @NotNull CBQueryArgs cbQueryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(onyxStatisticProvider, "<this>");
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m32980a = m32980a(onyxStatisticProvider);
        if (m32980a == null || (str = m32980a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m32980a, cbQueryArgs), OnyxNoteModel.class, str);
    }

    public static final void saveOnyxNoteList(@NotNull OnyxStatisticProvider onyxStatisticProvider, @NotNull List<OnyxNoteModel> list) {
        Intrinsics.checkNotNullParameter(onyxStatisticProvider, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ((OnyxNoteModel) it2.next()).beforeSave();
        }
        CouchCollections.INSTANCE.saveList(m32980a(onyxStatisticProvider), onyxStatisticProvider.getDatabase(), list);
    }
}
