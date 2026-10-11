package com.onyx.android.sdk.replicator.progress.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.bean.DocProgressBean;
import com.onyx.android.sdk.replicator.progress.bean.SyncDocProgress;
import com.onyx.android.sdk.replicator.progress.p037db.SyncProgressProvider;
import com.onyx.android.sdk.replicator.progress.p037db.model.SyncProgressModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/progress/request/SaveSyncProgressRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;", "execute", "Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;", "docProgressBean", "a", "Ljava/util/List;", "list", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveSyncProgressRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveSyncProgressRequest.kt\ncom/onyx/android/sdk/replicator/progress/request/SaveSyncProgressRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1855#2,2:65\n*S KotlinDebug\n*F\n+ 1 SaveSyncProgressRequest.kt\ncom/onyx/android/sdk/replicator/progress/request/SaveSyncProgressRequest\n*L\n24#1:65,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SaveSyncProgressRequest extends RxBaseRequest<List<? extends SyncProgressModel>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public List<DocProgressBean> list;

    public SaveSyncProgressRequest(@NotNull List<DocProgressBean> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
    }

    /* renamed from: a */
    public final SyncProgressModel m35588a(DocProgressBean docProgressBean) {
        String accountId = docProgressBean.getAccountId();
        if (accountId == null) {
            accountId = AccountDataBundle.INSTANCE.getSyncUserId();
        }
        String scope = docProgressBean.getScope();
        String documentId = docProgressBean.getDocumentId();
        SyncDocProgress syncDocProgress = null;
        if (!(scope == null || scope.length() == 0)) {
            if (!(documentId == null || documentId.length() == 0)) {
                SyncProgressProvider userSyncProgressProvider = KSyncBundle.INSTANCE.getUserSyncProgressProvider(accountId);
                SyncProgressModel loadSyncProgressModel = userSyncProgressProvider.loadSyncProgressModel(documentId);
                docProgressBean.updateDocProgressBeanPushTime();
                if (loadSyncProgressModel == null) {
                    loadSyncProgressModel = new SyncProgressModel();
                    loadSyncProgressModel.setUniqueId(documentId);
                    loadSyncProgressModel.setScope(docProgressBean.getScope());
                    loadSyncProgressModel.setUser(accountId);
                } else {
                    syncDocProgress = loadSyncProgressModel.getDocProgress();
                }
                if (syncDocProgress == null) {
                    syncDocProgress = new SyncDocProgress();
                }
                syncDocProgress.addSyncStatus(docProgressBean.getSyncType(), accountId, docProgressBean.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_SYNC_STATUS java.lang.String());
                loadSyncProgressModel.setDocProgress(syncDocProgress);
                loadSyncProgressModel.setSyncStatus(syncDocProgress.getSyncStatus());
                userSyncProgressProvider.saveSyncProgressModel(loadSyncProgressModel);
                return loadSyncProgressModel;
            }
        }
        return null;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public List<? extends SyncProgressModel> execute() throws Exception {
        List<? extends SyncProgressModel> list;
        HashMap hashMap = new HashMap();
        Iterator<T> it2 = this.list.iterator();
        while (it2.hasNext()) {
            SyncProgressModel m35588a = m35588a((DocProgressBean) it2.next());
            if (m35588a != null) {
                hashMap.put(m35588a.getUniqueId(), m35588a);
            }
        }
        Collection values = hashMap.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        list = CollectionsKt___CollectionsKt.toList(values);
        return list;
    }
}
