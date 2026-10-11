package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.DataRepositoryDownloadRecordModel;
import com.onyx.android.sdk.replicator.note.p035db.model.MaterialAddRecordModel;
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

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u000bJ\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004J\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0012\u001a\u00020\u0010H\u0002¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/DataRepositoryProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "", CouchFieldKey.KEY_LIBRARY_ID, "", "Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;", "loadDownloadRecordList", "model", "", "saveDownloadRecord", "deleteDownloadRecordByLibraryId", "Lcom/onyx/android/sdk/replicator/note/db/model/MaterialAddRecordModel;", "saveMaterialAddRecord", "loadAllMaterialAddRecord", "loadMaterialAddRecord", "deleteMaterialAddRecord", "Lcom/couchbase/lite/Collection;", "a", "b", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDataRepositoryProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataRepositoryProvider.kt\ncom/onyx/android/sdk/replicator/note/db/DataRepositoryProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n48#2,5:73\n48#2,5:82\n48#2,5:87\n1549#3:78\n1620#3,3:79\n1549#3:92\n1620#3,3:93\n*S KotlinDebug\n*F\n+ 1 DataRepositoryProvider.kt\ncom/onyx/android/sdk/replicator/note/db/DataRepositoryProvider\n*L\n40#1:73,5\n57#1:82,5\n66#1:87,5\n48#1:78\n48#1:79,3\n70#1:92\n70#1:93,3\n*E\n"})
/* loaded from: classes8.dex */
public final class DataRepositoryProvider extends BaseCouchProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataRepositoryProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    /* renamed from: a */
    public final Collection m35165a() {
        return ensureCollection(SyncConstant.COLLECTION_LIBRARY_DOWNLOAD_MODEL);
    }

    /* renamed from: b */
    public final Collection m35166b() {
        return ensureCollection(SyncConstant.COLLECTION_MATERIAL_IMPORT_MODEL);
    }

    public final void deleteDownloadRecordByLibraryId(@NotNull String libraryId) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(libraryId, "libraryId");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35165a = m35165a();
        List<DataRepositoryDownloadRecordModel> loadDownloadRecordList = loadDownloadRecordList(libraryId);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadDownloadRecordList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadDownloadRecordList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((DataRepositoryDownloadRecordModel) it2.next()).getUniqueId());
        }
        couchCollections.deleteListByIds(m35165a, arrayList);
    }

    public final void deleteMaterialAddRecord(@NotNull String libraryId) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(libraryId, "libraryId");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35166b = m35166b();
        List<MaterialAddRecordModel> loadMaterialAddRecord = loadMaterialAddRecord(libraryId);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadMaterialAddRecord, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadMaterialAddRecord.iterator();
        while (it2.hasNext()) {
            arrayList.add(((MaterialAddRecordModel) it2.next()).getUniqueId());
        }
        couchCollections.deleteListByIds(m35166b, arrayList);
    }

    @NotNull
    public final List<MaterialAddRecordModel> loadAllMaterialAddRecord() {
        String str;
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35166b = m35166b();
        CBQueryArgs selectAll = new CBQueryArgs().selectAll();
        if (m35166b == null || (str = m35166b.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35166b, selectAll), MaterialAddRecordModel.class, str);
    }

    @NotNull
    public final List<DataRepositoryDownloadRecordModel> loadDownloadRecordList(@NotNull String libraryId) {
        String str;
        Intrinsics.checkNotNullParameter(libraryId, "libraryId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_LIBRARY_ID, libraryId));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35165a = m35165a();
        if (m35165a == null || (str = m35165a.getName()) == null) {
            str = "_default";
        }
        return couchUtils.fromResultList(couchCollections.queryResultList(m35165a, andWith), DataRepositoryDownloadRecordModel.class, str);
    }

    @NotNull
    public final List<MaterialAddRecordModel> loadMaterialAddRecord(@NotNull String libraryId) {
        String str;
        Intrinsics.checkNotNullParameter(libraryId, "libraryId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_LIBRARY_ID, libraryId));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35166b = m35166b();
        if (m35166b == null || (str = m35166b.getName()) == null) {
            str = "_default";
        }
        return couchUtils.fromResultList(couchCollections.queryResultList(m35166b, andWith), MaterialAddRecordModel.class, str);
    }

    public final void saveDownloadRecord(@NotNull DataRepositoryDownloadRecordModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        CouchCollections.INSTANCE.saveDocument(m35165a(), (Collection) model);
    }

    public final void saveMaterialAddRecord(@NotNull MaterialAddRecordModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        deleteMaterialAddRecord(model.getLibraryId());
        CouchCollections.INSTANCE.saveDocument(m35166b(), (Collection) model);
    }
}
