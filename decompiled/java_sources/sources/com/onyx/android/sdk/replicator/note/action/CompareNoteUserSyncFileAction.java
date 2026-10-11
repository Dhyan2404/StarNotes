package com.onyx.android.sdk.replicator.note.action;

import com.alibaba.sdk.android.oss.model.OSSObjectSummary;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.oss.GetListObjectBean;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.bean.SyncDataBean;
import com.onyx.android.sdk.replicator.common.BaseSyncFile;
import com.onyx.android.sdk.replicator.note.utils.OssPaths;
import com.onyx.android.sdk.replicator.replicator.DataReplicator;
import com.onyx.android.sdk.replicator.replicator.userFile.UserCoverResSyncFile;
import com.onyx.android.sdk.replicator.replicator.userFile.UserDataPBSyncFile;
import com.onyx.android.sdk.replicator.replicator.userFile.UserTemplateResSyncFile;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004H\u0002J\u0016\u0010\u000b\u001a\u00020\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0004H\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/CompareNoteUserSyncFileAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;", "getSyncDataBeans", "Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;", GoogleApiAvailabilityLight.f29016b, "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;", "summaries", "l", "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", "dataReplicator", "", C6998g.f39679a, "Ljava/util/List;", "syncDataBeans", "", "m", "()Ljava/lang/String;", "syncUserId", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCompareNoteUserSyncFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompareNoteUserSyncFileAction.kt\ncom/onyx/android/sdk/replicator/note/action/CompareNoteUserSyncFileAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,74:1\n1855#2,2:75\n1855#2,2:77\n*S KotlinDebug\n*F\n+ 1 CompareNoteUserSyncFileAction.kt\ncom/onyx/android/sdk/replicator/note/action/CompareNoteUserSyncFileAction\n*L\n53#1:75,2\n57#1:77,2\n*E\n"})
/* loaded from: classes8.dex */
public final class CompareNoteUserSyncFileAction extends BaseNoteSyncAction<CompareNoteUserSyncFileAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final DataReplicator dataReplicator;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<SyncDataBean> syncDataBeans;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.CompareNoteUserSyncFileAction$a */
    /* loaded from: classes8.dex */
    public static final class C7678a<T, R> implements Function {
        public C7678a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CompareNoteUserSyncFileAction apply(@NotNull List<? extends OSSObjectSummary> summaries) {
            Intrinsics.checkNotNullParameter(summaries, "summaries");
            return CompareNoteUserSyncFileAction.this.m35064l(summaries);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.CompareNoteUserSyncFileAction$b */
    /* loaded from: classes8.dex */
    public static final class C7679b<T, R> implements Function {
        public C7679b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CompareNoteUserSyncFileAction apply(@NotNull CompareNoteUserSyncFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CompareNoteUserSyncFileAction.this;
        }
    }

    public CompareNoteUserSyncFileAction(@NotNull DataReplicator dataReplicator) {
        Intrinsics.checkNotNullParameter(dataReplicator, "dataReplicator");
        this.dataReplicator = dataReplicator;
        this.syncDataBeans = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CompareNoteUserSyncFileAction> create() {
        GetListObjectBean getListObjectBean = new GetListObjectBean(null, null, null, null, null, 0, 63, null);
        OssPaths ossPaths = OssPaths.INSTANCE;
        getListObjectBean.setPrefix(ossPaths.ossPathString(ossPaths.ossUserDataDir(m35065m())));
        getListObjectBean.setMaxKeys(1000);
        RxOSSManager rxOSSManager = this.dataReplicator.getRxOSSManager();
        Intrinsics.checkNotNull(rxOSSManager);
        Observable<CompareNoteUserSyncFileAction> map = rxOSSManager.getObjectList(getListObjectBean).observeOn(KSyncBundle.INSTANCE.getObserveOn()).map(new C7678a()).map(new C7679b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<SyncDataBean> getSyncDataBeans() {
        return this.syncDataBeans;
    }

    /* renamed from: l */
    public final CompareNoteUserSyncFileAction m35064l(List<? extends OSSObjectSummary> summaries) {
        Benchmark benchmark = new Benchmark();
        List<BaseSyncFile> m35066n = m35066n();
        for (OSSObjectSummary oSSObjectSummary : summaries) {
            Iterator<T> it2 = m35066n.iterator();
            while (it2.hasNext()) {
                ((BaseSyncFile) it2.next()).collectCloudFileSummary(oSSObjectSummary);
            }
        }
        Iterator<T> it3 = m35066n.iterator();
        while (it3.hasNext()) {
            CollectionKt.safeAddAll(this.syncDataBeans, ((BaseSyncFile) it3.next()).makeSyncDataBean());
        }
        int size = CollectionKt.getSize(summaries);
        if (size > 1000) {
            benchmark.report("compare oss count: " + size);
        }
        this.dataReplicator.postComparedSyncFileEvent();
        return this;
    }

    /* renamed from: m */
    public final String m35065m() {
        String userId = this.dataReplicator.getUserId();
        Intrinsics.checkNotNull(userId);
        return userId;
    }

    /* renamed from: n */
    public final List<BaseSyncFile> m35066n() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new UserDataPBSyncFile(this.dataReplicator));
        arrayList.add(new UserTemplateResSyncFile(this.dataReplicator));
        arrayList.add(new UserCoverResSyncFile(this.dataReplicator));
        return arrayList;
    }
}
