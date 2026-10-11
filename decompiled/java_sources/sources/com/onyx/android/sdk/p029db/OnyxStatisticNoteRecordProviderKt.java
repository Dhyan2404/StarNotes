package com.onyx.android.sdk.p029db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.data.OnyxNoteRecordModel;
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

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\f\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0002\u001a\u0018\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u001a\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003*\u00020\u00002\u0006\u0010\t\u001a\u00020\b\u001a\u0018\u0010\r\u001a\u00020\u0006*\u00020\u00002\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0003¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", "Lcom/couchbase/lite/Collection;", "a", "", "Lcom/onyx/android/sdk/data/OnyxNoteRecordModel;", "list", "", "saveOnyxNoteRecordList", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "cbQueryArgs", "loadOnyxNoteRecordList", "", "idList", "deleteOnyxNoteRecordByIds", "sdk-statistics_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOnyxStatisticNoteRecordProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxStatisticNoteRecordProvider.kt\ncom/onyx/android/sdk/db/OnyxStatisticNoteRecordProviderKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,37:1\n1855#2,2:38\n48#3,5:40\n*S KotlinDebug\n*F\n+ 1 OnyxStatisticNoteRecordProvider.kt\ncom/onyx/android/sdk/db/OnyxStatisticNoteRecordProviderKt\n*L\n24#1:38,2\n29#1:40,5\n*E\n"})
/* loaded from: classes7.dex */
public final class OnyxStatisticNoteRecordProviderKt {
    /* renamed from: a */
    public static final Collection m32981a(OnyxStatisticProvider onyxStatisticProvider) {
        return onyxStatisticProvider.getCouchHolder().ensureCollection(SyncConstant.COLLECTION_PROVIDER_ONYX_STATISTIC_NOTE_RECORD_MODEL);
    }

    public static final void deleteOnyxNoteRecordByIds(@NotNull OnyxStatisticProvider onyxStatisticProvider, @NotNull List<String> idList) {
        Intrinsics.checkNotNullParameter(onyxStatisticProvider, "<this>");
        Intrinsics.checkNotNullParameter(idList, "idList");
        if (idList.isEmpty()) {
            return;
        }
        CouchCollections.INSTANCE.deleteListByIds(m32981a(onyxStatisticProvider), idList);
    }

    @NotNull
    public static final List<OnyxNoteRecordModel> loadOnyxNoteRecordList(@NotNull OnyxStatisticProvider onyxStatisticProvider, @NotNull CBQueryArgs cbQueryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(onyxStatisticProvider, "<this>");
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m32981a = m32981a(onyxStatisticProvider);
        if (m32981a == null || (str = m32981a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m32981a, cbQueryArgs), OnyxNoteRecordModel.class, str);
    }

    public static final void saveOnyxNoteRecordList(@NotNull OnyxStatisticProvider onyxStatisticProvider, @NotNull List<OnyxNoteRecordModel> list) {
        Intrinsics.checkNotNullParameter(onyxStatisticProvider, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ((OnyxNoteRecordModel) it2.next()).beforeSave();
        }
        CouchCollections.INSTANCE.saveList(m32981a(onyxStatisticProvider), onyxStatisticProvider.getDatabase(), list);
    }
}
