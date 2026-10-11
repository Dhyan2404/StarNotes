package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.PBDocRecordModel;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\b\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006J(\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00020\f2\u0006\u0010\n\u001a\u00020\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\u0006J-\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00020\f2\u0006\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\r\u0010\u0010J!\u0010\u0011\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tJ\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015J\b\u0010\u0019\u001a\u00020\u0018H\u0002R\u0014\u0010\u001b\u001a\u00020\u000e8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;", "model", "", "saveRecordModel", "", "list", "saveRecordList", "", "documentId", "recordIdList", "", "loadRecordModelMap", "", "status", "(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Map;", "deleteDocRecord", "(Ljava/lang/String;Ljava/lang/Integer;)V", Constants.CLEAR_ATTRIBUTES, "restoreStatus", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "loadRecordList", "Lcom/couchbase/lite/Collection;", "a", "I", "LIMIT_RECORD_ID_LIST_COUNT_ONCE_LOAD", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPBDocRecordProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PBDocRecordProvider.kt\ncom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,107:1\n1194#2,2:108\n1222#2,4:110\n1194#2,2:115\n1222#2,4:117\n1549#2:121\n1620#2,3:122\n1549#2:125\n1620#2,3:126\n2634#2:129\n1#3:114\n1#3:130\n48#4,5:131\n*S KotlinDebug\n*F\n+ 1 PBDocRecordProvider.kt\ncom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider\n*L\n68#1:108,2\n68#1:110,4\n79#1:115,2\n79#1:117,4\n85#1:121\n85#1:122,3\n91#1:125\n91#1:126,3\n98#1:129\n98#1:130\n105#1:131,5\n*E\n"})
/* loaded from: classes8.dex */
public final class PBDocRecordProvider extends BaseCouchProvider {

    /* renamed from: a, reason: from kotlin metadata */
    public final int LIMIT_RECORD_ID_LIST_COUNT_ONCE_LOAD;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PBDocRecordProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
        this.LIMIT_RECORD_ID_LIST_COUNT_ONCE_LOAD = 2000;
    }

    public static /* synthetic */ void deleteDocRecord$default(PBDocRecordProvider pBDocRecordProvider, String str, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        pBDocRecordProvider.deleteDocRecord(str, num);
    }

    public static /* synthetic */ Map loadRecordModelMap$default(PBDocRecordProvider pBDocRecordProvider, String str, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        return pBDocRecordProvider.loadRecordModelMap(str, num);
    }

    /* renamed from: a */
    public final Collection m35181a() {
        return ensureCollection(SyncConstant.COLLECTION_PB_DOC_RECORD_MODEL);
    }

    public final void clear(@NotNull String documentId) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        List<PBDocRecordModel> loadRecordList = loadRecordList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression("documentId", documentId)));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadRecordList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadRecordList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((PBDocRecordModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35181a(), arrayList);
    }

    public final void deleteDocRecord(@NotNull String documentId, @Nullable Integer status) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("documentId", documentId));
        if (status != null) {
            status.intValue();
            andWith.andWith(couchUtils.equalExpression("status", status));
        }
        List<PBDocRecordModel> loadRecordList = loadRecordList(andWith);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadRecordList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadRecordList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((PBDocRecordModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35181a(), arrayList);
    }

    @NotNull
    public final List<PBDocRecordModel> loadRecordList(@NotNull CBQueryArgs queryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35181a = m35181a();
        if (m35181a == null || (str = m35181a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35181a, queryArgs), PBDocRecordModel.class, str);
    }

    @NotNull
    public final Map<String, PBDocRecordModel> loadRecordModelMap(@NotNull String documentId, @NotNull List<String> recordIdList) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(recordIdList, "recordIdList");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = CollectionKt.getSize(recordIdList);
        int i = this.LIMIT_RECORD_ID_LIST_COUNT_ONCE_LOAD;
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + i;
            List safelySubList = CollectionKt.safelySubList(recordIdList, i2, i3);
            CBQueryArgs cBQueryArgs = new CBQueryArgs();
            CouchUtils couchUtils = CouchUtils.INSTANCE;
            CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("documentId", documentId)).andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, safelySubList));
            andWith.m72251setLimit(safelySubList.size());
            List<PBDocRecordModel> loadRecordList = loadRecordList(andWith);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadRecordList, 10);
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(collectionSizeOrDefault), 16));
            for (Object obj : loadRecordList) {
                linkedHashMap2.put(((PBDocRecordModel) obj).getUniqueId(), obj);
            }
            linkedHashMap.putAll(linkedHashMap2);
            i2 = i3;
        }
        return linkedHashMap;
    }

    public final void restoreStatus(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        List<PBDocRecordModel> loadRecordList = loadRecordList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression("documentId", documentId)));
        Iterator<T> it2 = loadRecordList.iterator();
        while (it2.hasNext()) {
            ((PBDocRecordModel) it2.next()).setStatus(0);
        }
        saveRecordList(loadRecordList);
    }

    public final void saveRecordList(@NotNull List<PBDocRecordModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (list.isEmpty()) {
            return;
        }
        CouchCollections.INSTANCE.saveList(m35181a(), getDatabase(), list);
    }

    public final void saveRecordModel(@NotNull PBDocRecordModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        CouchCollections.INSTANCE.saveDocument(m35181a(), (Collection) model);
        if (model.isImported()) {
            Debug.INSTANCE.m32035d(PBDocRecordProvider.class, "save pb import record model docId: " + model.getDocumentId() + ", record id: " + model.getUniqueId(), new Object[0]);
        }
    }

    @NotNull
    public final Map<String, PBDocRecordModel> loadRecordModelMap(@NotNull String documentId, @Nullable Integer status) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("documentId", documentId));
        if (status != null) {
            status.intValue();
            andWith.andWith(couchUtils.equalExpression("status", status));
        }
        List<PBDocRecordModel> loadRecordList = loadRecordList(andWith);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadRecordList, 10);
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(collectionSizeOrDefault), 16));
        for (Object obj : loadRecordList) {
            linkedHashMap.put(((PBDocRecordModel) obj).getUniqueId(), obj);
        }
        return linkedHashMap;
    }
}
