package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.AutoBackupModel;
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

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0005J\u0014\u0010\u000b\u001a\u00020\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\u000b\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0010H\u0002¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "", "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;", "loadAutoBackupList", "model", "", "saveAutoBackup", "models", "deleteAutoBackupList", "cbQueryArgs", "", "", "b", "Lcom/couchbase/lite/Collection;", "a", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAutoBackupProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoBackupProvider.kt\ncom/onyx/android/sdk/replicator/note/db/AutoBackupProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n48#2,5:57\n1549#3:62\n1620#3,3:63\n*S KotlinDebug\n*F\n+ 1 AutoBackupProvider.kt\ncom/onyx/android/sdk/replicator/note/db/AutoBackupProvider\n*L\n26#1:57,5\n43#1:62\n43#1:63,3\n*E\n"})
/* loaded from: classes8.dex */
public final class AutoBackupProvider extends BaseCouchProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AutoBackupProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    /* renamed from: a */
    public final Collection m35158a() {
        return ensureCollection(m35159b());
    }

    /* renamed from: b */
    public final String m35159b() {
        return SyncConstant.COLLECTION_AUTO_BACKUP_MODEL;
    }

    public final void deleteAutoBackupList(@NotNull List<AutoBackupModel> models) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(models, "models");
        if (models.isEmpty()) {
            return;
        }
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35158a = m35158a();
        List<AutoBackupModel> list = models;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((AutoBackupModel) it2.next()).getUniqueId());
        }
        couchCollections.deleteListByIds(m35158a, arrayList);
    }

    @NotNull
    public final List<AutoBackupModel> loadAutoBackupList(@NotNull CBQueryArgs queryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35158a = m35158a();
        if (m35158a == null || (str = m35158a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35158a, queryArgs), AutoBackupModel.class, str);
    }

    public final void saveAutoBackup(@NotNull AutoBackupModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        model.setUser(getCouchHolder().getUserId());
        model.setDbId(getCouchHolder().getDbName());
        model.ensureUniqueIdExist();
        model.beforeSave();
        CouchCollections.INSTANCE.saveDocument(m35158a(), (Collection) model);
    }

    public final long deleteAutoBackupList(@NotNull CBQueryArgs cbQueryArgs) {
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        return CouchCollections.INSTANCE.deleteByExpression(m35158a(), getDatabase(), cbQueryArgs);
    }
}
