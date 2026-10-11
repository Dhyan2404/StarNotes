package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.AutoBackupTask;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0005J\b\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\rH\u0002¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "", "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;", "loadAutoBackupTaskList", "model", "", "saveAutoBackupTask", "deleteAutoBackupTask", "", "b", "Lcom/couchbase/lite/Collection;", "a", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAutoBackupTaskProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoBackupTaskProvider.kt\ncom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,52:1\n48#2,5:53\n*S KotlinDebug\n*F\n+ 1 AutoBackupTaskProvider.kt\ncom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider\n*L\n26#1:53,5\n*E\n"})
/* loaded from: classes8.dex */
public final class AutoBackupTaskProvider extends BaseCouchProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AutoBackupTaskProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    /* renamed from: a */
    public final Collection m35160a() {
        return ensureCollection(m35161b());
    }

    /* renamed from: b */
    public final String m35161b() {
        return SyncConstant.COLLECTION_AUTO_BACKUP_TASK;
    }

    public final void deleteAutoBackupTask(@NotNull AutoBackupTask model) {
        Intrinsics.checkNotNullParameter(model, "model");
        String uniqueId = model.getUniqueId();
        if (StringKt.isNotBlank(uniqueId)) {
            CouchCollections.INSTANCE.deleteById(m35160a(), uniqueId);
        }
    }

    @NotNull
    public final List<AutoBackupTask> loadAutoBackupTaskList(@NotNull CBQueryArgs queryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35160a = m35160a();
        if (m35160a == null || (str = m35160a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35160a, queryArgs), AutoBackupTask.class, str);
    }

    public final void saveAutoBackupTask(@NotNull AutoBackupTask model) {
        Intrinsics.checkNotNullParameter(model, "model");
        model.setUser(getCouchHolder().getUserId());
        model.setDbId(getCouchHolder().getDbName());
        model.ensureUniqueIdExist();
        model.beforeSave();
        CouchCollections.INSTANCE.saveDocument(m35160a(), (Collection) model);
    }
}
