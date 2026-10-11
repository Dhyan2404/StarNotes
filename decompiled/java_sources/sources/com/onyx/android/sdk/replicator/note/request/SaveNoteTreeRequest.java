package com.onyx.android.sdk.replicator.note.request;

import android.util.Log;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.Database;
import com.couchbase.lite.Expression;
import com.couchbase.lite.MutableDocument;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.bean.SyncNoteTreeBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.replicator.BaseReplicator;
import com.onyx.android.sdk.replicator.utils.CouchExpressionUtils;
import com.onyx.android.sdk.replicator.utils.KSyncDirUtils;
import com.onyx.android.sdk.replicator.utils.KSyncLogUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import kotlin.time.TimeSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0011¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0005\u001a\u00020\u0000H\u0016J\u0016\u0010\n\u001a\u00020\t2\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006J\u0018\u0010\r\u001a\u00020\t2\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0006H\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0010\u001a\u00020\tH\u0002R\u0016\u0010\u0013\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0012R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0014¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;", "syncNoteTreeBean", "setSyncNoteTreeBean", "execute", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteList", "", "saveNoteTree", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "tagModels", "c", "", "a", "b", "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "replicator", "Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveNoteTreeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveNoteTreeRequest.kt\ncom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n18#2,4:147\n50#2,7:151\n86#3,4:158\n1603#4,9:162\n1855#4:171\n1856#4:173\n1612#4:174\n766#4:175\n857#4,2:176\n1855#4,2:178\n1603#4,9:180\n1855#4:189\n1856#4:191\n1612#4:192\n1#5:172\n1#5:190\n*S KotlinDebug\n*F\n+ 1 SaveNoteTreeRequest.kt\ncom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest\n*L\n91#1:147,4\n91#1:151,7\n94#1:158,4\n119#1:162,9\n119#1:171\n119#1:173\n119#1:174\n120#1:175\n120#1:176,2\n141#1:178,2\n143#1:180,9\n143#1:189\n143#1:191\n143#1:192\n119#1:172\n143#1:190\n*E\n"})
/* loaded from: classes8.dex */
public final class SaveNoteTreeRequest extends RxBaseRequest<SaveNoteTreeRequest> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public BaseReplicator replicator;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public SyncNoteTreeBean syncNoteTreeBean;

    public SaveNoteTreeRequest(@NotNull BaseReplicator replicator) {
        Intrinsics.checkNotNullParameter(replicator, "replicator");
        this.replicator = replicator;
        this.syncNoteTreeBean = new SyncNoteTreeBean();
    }

    /* renamed from: a */
    public final long m35552a() throws CouchbaseLiteException {
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        Database ensureDB = this.replicator.ensureDB();
        CouchExpressionUtils couchExpressionUtils = CouchExpressionUtils.INSTANCE;
        Expression and = couchExpressionUtils.notCommitDocExpression().and(couchExpressionUtils.docSyncEnableExpression());
        Intrinsics.checkNotNullExpressionValue(and, "and(...)");
        return couchUtils.queryDocumentCount(ensureDB, and);
    }

    /* renamed from: b */
    public final void m35553b() {
        List distinct;
        List<SyncNoteModel> noteModels = this.syncNoteTreeBean.getNoteModels();
        List<SyncNoteModel> list = noteModels;
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = noteModels.iterator();
        while (it2.hasNext()) {
            String parentUniqueId = ((SyncNoteModel) it2.next()).getParentUniqueId();
            if (parentUniqueId != null) {
                arrayList.add(parentUniqueId);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (StringKt.isNotBlank((String) obj)) {
                arrayList2.add(obj);
            }
        }
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList2);
        if (distinct.isEmpty()) {
            return;
        }
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, distinct));
        List queryModelList = couchUtils.queryModelList(this.replicator.ensureCouchDb().ensureDB(), cBQueryArgs, SyncNoteModel.class);
        Iterator it3 = queryModelList.iterator();
        while (it3.hasNext()) {
            ((SyncNoteModel) it3.next()).beforeSave();
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it4 = queryModelList.iterator();
        while (it4.hasNext()) {
            MutableDocument mutableDocument = CouchUtils.INSTANCE.toMutableDocument((SyncNoteModel) it4.next());
            if (mutableDocument != null) {
                arrayList3.add(mutableDocument);
            }
        }
        CouchUtils.INSTANCE.saveList(this.replicator.ensureCouchDb().ensureDB(), arrayList3);
    }

    /* renamed from: c */
    public final void m35554c(List<? extends SyncTagModel> tagModels) throws CouchbaseLiteException {
        List<MutableDocument> list;
        List<? extends SyncTagModel> list2 = tagModels;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (SyncTagModel syncTagModel : tagModels) {
            syncTagModel.setUser(this.replicator.getCbUserId());
            syncTagModel.setDbId(this.replicator.getDbId());
            syncTagModel.beforeSave();
            MutableDocument mutableDocument = CouchUtils.INSTANCE.toMutableDocument(syncTagModel);
            if (mutableDocument != null) {
                CollectionKt.safeAdd(arrayList, mutableDocument);
            }
        }
        CouchHolder.CouchDataProvider couchDataProvider = CouchHolder.CouchDataProvider.INSTANCE;
        CouchHolder ensureCouchDb = this.replicator.ensureCouchDb();
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        couchDataProvider.saveList(ensureCouchDb, list);
        KSyncLogUtils.INSTANCE.m35864d(SaveNoteTreeRequest.class, "save tag count: " + CollectionKt.getSize(arrayList));
    }

    public final void saveNoteTree(@Nullable List<? extends SyncNoteModel> noteList) throws CouchbaseLiteException {
        List<MutableDocument> list;
        List<? extends SyncNoteModel> list2 = noteList;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        for (SyncNoteModel syncNoteModel : noteList) {
            String uniqueId = syncNoteModel.getUniqueId();
            if (syncNoteModel.isLibrary() && syncNoteModel.isForceDeleted()) {
                arrayList2.add(uniqueId);
            } else {
                long m74114markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto();
                syncNoteModel.setNotePointSize(KSyncDirUtils.INSTANCE.getDocFileSize(uniqueId));
                long m74119elapsedNowUwyO8pc = TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(m74114markNowz9LOYto);
                Debug debug = Debug.INSTANCE;
                if (debug.getDebug()) {
                    Log.d(debug.getTAG(), syncNoteModel.getTitle() + " noteSize:" + FileUtils.INSTANCE.getFileSize(syncNoteModel.getNotePointSize()) + ',' + ((Object) Duration.m74024toStringimpl(m74119elapsedNowUwyO8pc)));
                }
                syncNoteModel.setUser(this.replicator.getCbUserId());
                syncNoteModel.setDbId(this.replicator.getDbId());
                syncNoteModel.beforeSave();
                CollectionKt.safeAdd(arrayList, CouchUtils.INSTANCE.toMutableDocument(syncNoteModel));
                if (syncNoteModel.getNoteSyncStatus() == 1) {
                    this.replicator.removeDisabledSyncDocId(uniqueId);
                } else {
                    this.replicator.addDisabledSyncDocId(uniqueId);
                }
            }
        }
        CouchHolder.CouchDataProvider couchDataProvider = CouchHolder.CouchDataProvider.INSTANCE;
        couchDataProvider.deleteListById(this.replicator.ensureCouchDb(), arrayList2);
        CouchHolder ensureCouchDb = this.replicator.ensureCouchDb();
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        couchDataProvider.saveList(ensureCouchDb, list);
    }

    @NotNull
    public final SaveNoteTreeRequest setSyncNoteTreeBean(@NotNull SyncNoteTreeBean syncNoteTreeBean) {
        Intrinsics.checkNotNullParameter(syncNoteTreeBean, "syncNoteTreeBean");
        this.syncNoteTreeBean = syncNoteTreeBean;
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public SaveNoteTreeRequest execute() throws Exception {
        m35554c(this.syncNoteTreeBean.getTagModels());
        saveNoteTree(this.syncNoteTreeBean.getNoteModels());
        m35553b();
        return this;
    }
}
