package com.onyx.android.sdk.replicator.progress.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.bean.KSyncStatus;
import com.onyx.android.sdk.replicator.bean.KSyncType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\f\u0018\u0000 &2\u00020\u0001:\u0001&B\u0007¢\u0006\u0004\b$\u0010%J\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002J \u0010\b\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tJ\b\u0010\u000b\u001a\u0004\u0018\u00010\tJ\u0018\u0010\u000e\u001a\u0004\u0018\u00010\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\fH\u0007J\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R(\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0006\u001a\u00020\u00028G¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u001c\u001a\u00020\u001b8G¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\u001b8G¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001dR\u0011\u0010\u001f\u001a\u00020\u001b8G¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u001dR\u0014\u0010!\u001a\u00020\u001b8CX\u0082\u0004¢\u0006\u0006\u001a\u0004\b \u0010\u001dR\u0014\u0010#\u001a\u00020\u001b8CX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010\u001d¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;", "", "", "syncType", "", "accountId", CouchFieldKey.KEY_SYNC_STATUS, "", "addSyncStatus", "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;", "status", "loadOnyxSyncStatus", "", "typeList", "getSyncStatusByTypeList", "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;", "b", "a", "", "Ljava/util/Set;", "getSyncStatusSet", "()Ljava/util/Set;", "setSyncStatusSet", "(Ljava/util/Set;)V", "syncStatusSet", "getSyncStatus", "()I", "", "isSyncingToThirdParty", Constants.BOOLEAN_VALUE_SIG, "isOnyxSyncFail", "isOnyxSyncFinished", "d", "isSyncSuccess", "c", "isSyncFail", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSyncDocProgress.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncDocProgress.kt\ncom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,148:1\n1#2:149\n1855#3,2:150\n1726#3,3:152\n1747#3,3:155\n1747#3,3:158\n1747#3,3:161\n1747#3,3:164\n1747#3,3:167\n1747#3,3:170\n1747#3,3:173\n*S KotlinDebug\n*F\n+ 1 SyncDocProgress.kt\ncom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress\n*L\n70#1:150,2\n81#1:152,3\n84#1:155,3\n87#1:158,3\n118#1:161,3\n122#1:164,3\n127#1:167,3\n133#1:170,3\n138#1:173,3\n*E\n"})
/* loaded from: classes8.dex */
public final class SyncDocProgress {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Set<SyncDocProgressBean> syncStatusSet = new HashSet();

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress$Companion;", "", "()V", "clone", "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;", "docProgress", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final SyncDocProgress clone(@NotNull SyncDocProgress docProgress) {
            Intrinsics.checkNotNullParameter(docProgress, "docProgress");
            SyncDocProgress syncDocProgress = new SyncDocProgress();
            syncDocProgress.getSyncStatusSet().addAll(docProgress.getSyncStatusSet());
            return syncDocProgress;
        }

        public Companion() {
        }
    }

    /* renamed from: a */
    public final SyncDocProgressBean m35583a(int syncType) {
        Object obj;
        Iterator<T> it2 = this.syncStatusSet.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((SyncDocProgressBean) obj).getSyncType() == syncType) {
                break;
            }
        }
        return (SyncDocProgressBean) obj;
    }

    public final void addSyncStatus(int syncType, @NotNull String accountId, int syncStatus) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        SyncDocProgressBean m35584b = m35584b(syncType, accountId);
        if (m35584b == null) {
            m35584b = new SyncDocProgressBean().setSyncType(syncType).setAccountId(accountId).setSyncStatus(new KSyncStatus());
            this.syncStatusSet.add(m35584b);
        }
        m35584b.getSyncStatus().setStatus(syncStatus);
    }

    /* renamed from: b */
    public final SyncDocProgressBean m35584b(int syncType, String accountId) {
        Object obj = null;
        AtomicReference atomicReference = new AtomicReference(null);
        Iterator<T> it2 = this.syncStatusSet.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            SyncDocProgressBean syncDocProgressBean = (SyncDocProgressBean) next;
            if (syncDocProgressBean.getSyncType() == syncType && StringUtils.equals(syncDocProgressBean.getAccountId(), accountId)) {
                obj = next;
                break;
            }
        }
        atomicReference.set((SyncDocProgressBean) obj);
        return (SyncDocProgressBean) atomicReference.get();
    }

    @JSONField(serialize = false)
    /* renamed from: c */
    public final boolean m35585c() {
        Set<SyncDocProgressBean> set = this.syncStatusSet;
        if ((set instanceof Collection) && set.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = set.iterator();
        while (it2.hasNext()) {
            if (((SyncDocProgressBean) it2.next()).getSyncStatus().isSyncFail()) {
                return true;
            }
        }
        return false;
    }

    @JSONField(serialize = false)
    /* renamed from: d */
    public final boolean m35586d() {
        Set<SyncDocProgressBean> set = this.syncStatusSet;
        if ((set instanceof Collection) && set.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = set.iterator();
        while (it2.hasNext()) {
            if (((SyncDocProgressBean) it2.next()).getSyncStatus().isSyncSuccess()) {
                return true;
            }
        }
        return false;
    }

    @JSONField(serialize = false)
    public final int getSyncStatus() {
        if (this.syncStatusSet.isEmpty()) {
            return 4;
        }
        for (SyncDocProgressBean syncDocProgressBean : this.syncStatusSet) {
            if (syncDocProgressBean.getSyncStatus().isSyncing()) {
                return 1;
            }
            if (syncDocProgressBean.getSyncStatus().isSyncDisabled()) {
                return 7;
            }
        }
        if (m35586d()) {
            return 2;
        }
        return m35585c() ? 3 : 0;
    }

    @JSONField(serialize = false)
    @Nullable
    public final KSyncStatus getSyncStatusByTypeList(@NotNull List<Integer> typeList) {
        boolean z;
        boolean z2;
        Intrinsics.checkNotNullParameter(typeList, "typeList");
        KSyncStatus kSyncStatus = new KSyncStatus();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = typeList.iterator();
        while (it2.hasNext()) {
            SyncDocProgressBean m35583a = m35583a(((Number) it2.next()).intValue());
            if (m35583a != null) {
                arrayList.add(m35583a);
                List<Integer> errorTypeList = m35583a.getSyncStatus().getErrorTypeList();
                if (errorTypeList != null) {
                    kSyncStatus.addErrorTypeList(errorTypeList);
                }
                kSyncStatus.mergeLatestSyncTime(m35583a.getSyncStatus());
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        boolean z3 = false;
        if (!arrayList.isEmpty()) {
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                if (!((SyncDocProgressBean) it3.next()).getSyncStatus().isSyncSuccess()) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        if (z) {
            kSyncStatus.setStatus(2);
        }
        if (!arrayList.isEmpty()) {
            Iterator it4 = arrayList.iterator();
            while (it4.hasNext()) {
                if (((SyncDocProgressBean) it4.next()).getSyncStatus().isSyncing()) {
                    z2 = true;
                    break;
                }
            }
        }
        z2 = false;
        if (z2) {
            kSyncStatus.setStatus(1);
        }
        if (!arrayList.isEmpty()) {
            Iterator it5 = arrayList.iterator();
            while (true) {
                if (!it5.hasNext()) {
                    break;
                }
                if (((SyncDocProgressBean) it5.next()).getSyncStatus().isSyncFail()) {
                    z3 = true;
                    break;
                }
            }
        }
        if (z3) {
            kSyncStatus.setStatus(3);
        }
        Iterator it6 = arrayList.iterator();
        long j = 0;
        long j2 = 0;
        while (it6.hasNext()) {
            j2 += ((SyncDocProgressBean) it6.next()).getSyncStatus().getTotal();
        }
        kSyncStatus.setTotal(j2);
        Iterator it7 = arrayList.iterator();
        while (it7.hasNext()) {
            j += ((SyncDocProgressBean) it7.next()).getSyncStatus().getCom.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants.OPERATION_STATUS_COMPLETED java.lang.String();
        }
        kSyncStatus.setCompleted(j);
        return kSyncStatus;
    }

    @NotNull
    public final Set<SyncDocProgressBean> getSyncStatusSet() {
        return this.syncStatusSet;
    }

    @JSONField(serialize = false)
    public final boolean isOnyxSyncFail() {
        Set<SyncDocProgressBean> set = this.syncStatusSet;
        if ((set instanceof Collection) && set.isEmpty()) {
            return false;
        }
        for (SyncDocProgressBean syncDocProgressBean : set) {
            if (syncDocProgressBean.getSyncType() == 0 && syncDocProgressBean.getSyncStatus().isSyncFail()) {
                return true;
            }
        }
        return false;
    }

    @JSONField(serialize = false)
    public final boolean isOnyxSyncFinished() {
        Set<SyncDocProgressBean> set = this.syncStatusSet;
        if ((set instanceof Collection) && set.isEmpty()) {
            return false;
        }
        for (SyncDocProgressBean syncDocProgressBean : set) {
            if (syncDocProgressBean.getSyncType() == 0 && syncDocProgressBean.getSyncStatus().isSyncFinish()) {
                return true;
            }
        }
        return false;
    }

    @JSONField(serialize = false)
    public final boolean isSyncingToThirdParty() {
        Set<SyncDocProgressBean> set = this.syncStatusSet;
        if ((set instanceof Collection) && set.isEmpty()) {
            return false;
        }
        for (SyncDocProgressBean syncDocProgressBean : set) {
            if (KSyncType.INSTANCE.isThirdPartySyncType(syncDocProgressBean.getSyncType()) && syncDocProgressBean.getSyncStatus().isSyncing()) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public final KSyncStatus loadOnyxSyncStatus() {
        List<Integer> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{0, 13});
        return getSyncStatusByTypeList(listOf);
    }

    public final void setSyncStatusSet(@NotNull Set<SyncDocProgressBean> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.syncStatusSet = set;
    }

    @NotNull
    public final SyncDocProgress addSyncStatus(int syncType, @NotNull String accountId, @Nullable KSyncStatus status) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        if (status == null) {
            return this;
        }
        SyncDocProgressBean m35584b = m35584b(syncType, accountId);
        if (m35584b != null) {
            status.merge(m35584b.getSyncStatus());
        } else {
            m35584b = new SyncDocProgressBean().setSyncType(syncType).setAccountId(accountId);
            this.syncStatusSet.add(m35584b);
        }
        m35584b.setSyncStatus(status);
        return this;
    }
}
