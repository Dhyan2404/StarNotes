package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.PBUserRecordModel;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\b\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006J \u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0006J%\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00020\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\f\u0010\u000fJ\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010J\b\u0010\u0014\u001a\u00020\u0013H\u0002R\u0014\u0010\u0016\u001a\u00020\r8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "Lcom/onyx/android/sdk/replicator/note/db/model/PBUserRecordModel;", "model", "", "saveRecordModel", "", "list", "saveRecordList", "", "recordIdList", "", "loadRecordModelMap", "", "status", "(Ljava/lang/Integer;)Ljava/util/Map;", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "loadRecordList", "Lcom/couchbase/lite/Collection;", "a", "I", "LIMIT_RECORD_ID_LIST_COUNT_ONCE_LOAD", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPBUserRecordProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PBUserRecordProvider.kt\ncom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,75:1\n1194#2,2:76\n1222#2,4:78\n1194#2,2:83\n1222#2,4:85\n1#3:82\n48#4,5:89\n*S KotlinDebug\n*F\n+ 1 PBUserRecordProvider.kt\ncom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider\n*L\n57#1:76,2\n57#1:78,4\n68#1:83,2\n68#1:85,4\n73#1:89,5\n*E\n"})
/* loaded from: classes8.dex */
public final class PBUserRecordProvider extends BaseCouchProvider {

    /* renamed from: a, reason: from kotlin metadata */
    public final int LIMIT_RECORD_ID_LIST_COUNT_ONCE_LOAD;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PBUserRecordProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
        this.LIMIT_RECORD_ID_LIST_COUNT_ONCE_LOAD = 2000;
    }

    public static /* synthetic */ Map loadRecordModelMap$default(PBUserRecordProvider pBUserRecordProvider, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            num = null;
        }
        return pBUserRecordProvider.loadRecordModelMap(num);
    }

    /* renamed from: a */
    public final Collection m35182a() {
        return ensureCollection(SyncConstant.COLLECTION_PB_USER_RECORD_MODEL);
    }

    @NotNull
    public final List<PBUserRecordModel> loadRecordList(@NotNull CBQueryArgs queryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35182a = m35182a();
        if (m35182a == null || (str = m35182a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35182a, queryArgs), PBUserRecordModel.class, str);
    }

    @NotNull
    public final Map<String, PBUserRecordModel> loadRecordModelMap(@NotNull List<String> recordIdList) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(recordIdList, "recordIdList");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = CollectionKt.getSize(recordIdList);
        int i = this.LIMIT_RECORD_ID_LIST_COUNT_ONCE_LOAD;
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + i;
            List safelySubList = CollectionKt.safelySubList(recordIdList, i2, i3);
            CBQueryArgs andWith = new CBQueryArgs().andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_UNIQUE_ID, safelySubList));
            andWith.m72251setLimit(safelySubList.size());
            List<PBUserRecordModel> loadRecordList = loadRecordList(andWith);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadRecordList, 10);
            mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(coerceAtLeast);
            for (Object obj : loadRecordList) {
                linkedHashMap2.put(((PBUserRecordModel) obj).getUniqueId(), obj);
            }
            linkedHashMap.putAll(linkedHashMap2);
            i2 = i3;
        }
        return linkedHashMap;
    }

    public final void saveRecordList(@NotNull List<PBUserRecordModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (list.isEmpty()) {
            return;
        }
        CouchCollections.INSTANCE.saveList(m35182a(), getDatabase(), list);
    }

    public final void saveRecordModel(@NotNull PBUserRecordModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        CouchCollections.INSTANCE.saveDocument(m35182a(), (Collection) model);
    }

    @NotNull
    public final Map<String, PBUserRecordModel> loadRecordModelMap(@Nullable Integer status) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        if (status != null) {
            status.intValue();
            cBQueryArgs.andWith(CouchUtils.INSTANCE.equalExpression("status", status));
        }
        List<PBUserRecordModel> loadRecordList = loadRecordList(cBQueryArgs);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadRecordList, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (Object obj : loadRecordList) {
            linkedHashMap.put(((PBUserRecordModel) obj).getUniqueId(), obj);
        }
        return linkedHashMap;
    }
}
