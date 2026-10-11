package com.onyx.android.sdk.cloudstorage.p020db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.model.NoteCloudRecordModel;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u001a\f\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0002\u001a\u0012\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003\u001a\u0014\u0010\t\u001a\u0004\u0018\u00010\u0003*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007\u001a\u0012\u0010\n\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;", "Lcom/couchbase/lite/Collection;", "a", "Lcom/onyx/android/sdk/cloudstorage/model/NoteCloudRecordModel;", "model", "", "saveNoteCloudRecord", "", "documentId", "loadNoteCloudRecord", "deleteNoteCloudRecord", "sdk-cloudstorage_release"}, m61529k = 2, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteCloudRecordProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteCloudRecordProvider.kt\ncom/onyx/android/sdk/cloudstorage/db/NoteCloudRecordProviderKt\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,32:1\n143#2:33\n137#2,3:34\n48#2,5:37\n144#2:42\n*S KotlinDebug\n*F\n+ 1 NoteCloudRecordProvider.kt\ncom/onyx/android/sdk/cloudstorage/db/NoteCloudRecordProviderKt\n*L\n26#1:33\n26#1:34,3\n26#1:37,5\n26#1:42\n*E\n"})
/* loaded from: classes7.dex */
public final class NoteCloudRecordProviderKt {
    /* renamed from: a */
    public static final Collection m32309a(CloudStorageRecordProvider cloudStorageRecordProvider) {
        return cloudStorageRecordProvider.getCouchHolder().ensureCollection(SyncConstant.COLLECTION_NOTE_CLOUD_RECORD);
    }

    public static final void deleteNoteCloudRecord(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "<this>");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CouchCollections.INSTANCE.deleteById(m32309a(cloudStorageRecordProvider), documentId);
    }

    @Nullable
    public static final NoteCloudRecordModel loadNoteCloudRecord(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull String documentId) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "<this>");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m32309a = m32309a(cloudStorageRecordProvider);
        List asList = CollectionKt.asList(documentId);
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, asList));
        String name = m32309a.getName();
        if (name == null) {
            name = "_default";
        }
        Intrinsics.checkNotNull(name);
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) couchUtils.fromResultList(couchCollections.queryResultList(m32309a, andWith), NoteCloudRecordModel.class, name));
        return (NoteCloudRecordModel) ((BaseReplicatorModel) firstOrNull);
    }

    public static final void saveNoteCloudRecord(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull NoteCloudRecordModel model) {
        Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "<this>");
        Intrinsics.checkNotNullParameter(model, "model");
        CouchCollections.INSTANCE.saveDocument(m32309a(cloudStorageRecordProvider), (Collection) model);
    }
}
