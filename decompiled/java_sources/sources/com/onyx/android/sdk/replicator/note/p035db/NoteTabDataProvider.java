package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0006\u0010\u0003\u001a\u00020\u0002J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0006\u0010\b\u001a\u00020\u0007J\u0014\u0010\n\u001a\u00020\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0014\u0010\u000b\u001a\u00020\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\b\u0010\r\u001a\u00020\fH\u0002¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/NoteTabDataProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "", "clearTabData", "", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "loadTabDataList", "", "queryTabCount", "list", "deleteTabData", "saveTabData", "Lcom/couchbase/lite/Collection;", "a", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteTabDataProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTabDataProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteTabDataProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,59:1\n1549#2:60\n1620#2,3:61\n1549#2:69\n1620#2,3:70\n1855#2,2:73\n48#3,5:64\n*S KotlinDebug\n*F\n+ 1 NoteTabDataProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteTabDataProvider\n*L\n30#1:60\n30#1:61,3\n46#1:69\n46#1:70,3\n54#1:73,2\n35#1:64,5\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteTabDataProvider extends BaseCouchProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteTabDataProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    /* renamed from: a */
    public final Collection m35179a() {
        return ensureCollection(SyncConstant.COLLECTION_NOTE_TAB_DATA_MODEL);
    }

    public final void clearTabData() {
        int collectionSizeOrDefault;
        List<NoteTabData> loadTabDataList = loadTabDataList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadTabDataList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadTabDataList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteTabData) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35179a(), arrayList);
    }

    public final void deleteTabData(@NotNull List<NoteTabData> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "list");
        if (CollectionKt.isNullOrEmpty(list)) {
            return;
        }
        List<NoteTabData> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteTabData) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35179a(), arrayList);
    }

    @NotNull
    public final List<NoteTabData> loadTabDataList() {
        String str;
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35179a = m35179a();
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        if (m35179a == null || (str = m35179a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35179a, cBQueryArgs), NoteTabData.class, str);
    }

    public final int queryTabCount() {
        return (int) CouchCollections.INSTANCE.queryDocumentCount(m35179a(), CouchUtils.INSTANCE.uniqueIdValued());
    }

    public final void saveTabData(@NotNull List<NoteTabData> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        List<NoteTabData> list2 = list;
        if (CollectionKt.isNullOrEmpty(list2)) {
            return;
        }
        for (NoteTabData noteTabData : list) {
            noteTabData.beforeSave();
            noteTabData.ensureUniqueIdExist();
        }
        CouchCollections.INSTANCE.saveList(m35179a(), getDatabase(), list2);
    }
}
