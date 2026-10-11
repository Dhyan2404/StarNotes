package com.onyx.android.sdk.replicator.bean;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.replicator.bean.PendingDocReplicators;
import com.onyx.android.sdk.replicator.bean.ReplicatorInfo;
import com.onyx.android.sdk.replicator.utils.KSyncLogUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010!\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b,\u0010-J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J \u0010\u0005\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\tJ\u0006\u0010\r\u001a\u00020\u0004J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000e\u001a\u00020\u0006J\u001a\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u0006H\u0002J\u0011\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0002H\u0082\u0002J\n\u0010\u0013\u001a\u0004\u0018\u00010\tH\u0002J\n\u0010\u0014\u001a\u0004\u0018\u00010\tH\u0002J\u001a\u0010\u0017\u001a\u0004\u0018\u00010\t2\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0015H\u0002J\u001c\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\t0\u00152\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\t0\u0018H\u0002R \u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0011\u0010\u001f\u001a\u00020\u00118F¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0011\u0010#\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u001a\u0010&\u001a\b\u0012\u0004\u0012\u00020\t0\u00158BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b$\u0010%R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020\t0\u00158BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b'\u0010%R\u001a\u0010+\u001a\b\u0012\u0004\u0012\u00020\t0)8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b*\u0010%¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;", "", "", "documentId", "", "addReplicator", "", "triggerSource", "docType", "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;", "removeReplicator", "replicatorInfo", "onReplicateFail", Constants.CLEAR_ATTRIBUTES, "scheduleType", "nextReplicator", C6997f.f39671c, "", "e", "m", "l", "", "pendingReplicatorList", C4921e.f26537n, "Ljava/util/Comparator;", "comparator", GoogleApiAvailabilityLight.f29016b, "Ljava/util/LinkedHashMap;", "a", "Ljava/util/LinkedHashMap;", "pendingReplicatorMap", "isEmpty", Constants.BOOLEAN_VALUE_SIG, "getSize", "()I", "size", "j", "()Ljava/util/List;", "replicatorsByTriggerSource", "i", "replicatorsByCreateAt", "", C6999h.f39688c, "replicatorList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPendingDocReplicators.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PendingDocReplicators.kt\ncom/onyx/android/sdk/replicator/bean/PendingDocReplicators\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,113:1\n372#2,7:114\n*S KotlinDebug\n*F\n+ 1 PendingDocReplicators.kt\ncom/onyx/android/sdk/replicator/bean/PendingDocReplicators\n*L\n38#1:114,7\n*E\n"})
/* loaded from: classes8.dex */
public final class PendingDocReplicators {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final LinkedHashMap<String, ReplicatorInfo> pendingReplicatorMap = new LinkedHashMap<>();

    public static /* synthetic */ ReplicatorInfo addReplicator$default(PendingDocReplicators pendingDocReplicators, String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            i2 = 1;
        }
        return pendingDocReplicators.addReplicator(str, i, i2);
    }

    /* renamed from: c */
    public static final int m34910c(ReplicatorInfo o1, ReplicatorInfo o2) {
        Intrinsics.checkNotNullParameter(o1, "o1");
        Intrinsics.checkNotNullParameter(o2, "o2");
        return Intrinsics.compare(o1.getCreateAt(), o2.getCreateAt());
    }

    /* renamed from: d */
    public static final int m34911d(ReplicatorInfo o1, ReplicatorInfo o2) {
        Intrinsics.checkNotNullParameter(o1, "o1");
        Intrinsics.checkNotNullParameter(o2, "o2");
        return o2.getTriggerSource() - o1.getTriggerSource();
    }

    /* renamed from: g */
    public static /* synthetic */ ReplicatorInfo m34912g(PendingDocReplicators pendingDocReplicators, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 1;
        }
        return pendingDocReplicators.m34914f(str, i);
    }

    public final void addReplicator(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        if (m34913e(documentId)) {
            return;
        }
        this.pendingReplicatorMap.put(documentId, ReplicatorInfo.INSTANCE.create(documentId));
    }

    public final void clear() {
        this.pendingReplicatorMap.clear();
    }

    /* renamed from: e */
    public final boolean m34913e(String documentId) {
        return this.pendingReplicatorMap.containsKey(documentId);
    }

    /* renamed from: f */
    public final ReplicatorInfo m34914f(String documentId, int docType) {
        LinkedHashMap<String, ReplicatorInfo> linkedHashMap = this.pendingReplicatorMap;
        ReplicatorInfo replicatorInfo = linkedHashMap.get(documentId);
        if (replicatorInfo == null) {
            replicatorInfo = ReplicatorInfo.INSTANCE.create(documentId);
            replicatorInfo.setDocType(docType);
            linkedHashMap.put(documentId, replicatorInfo);
        }
        return replicatorInfo;
    }

    public final int getSize() {
        return CollectionKt.getSize(this.pendingReplicatorMap);
    }

    /* renamed from: h */
    public final List<ReplicatorInfo> m34915h() {
        return new ArrayList(this.pendingReplicatorMap.values());
    }

    /* renamed from: i */
    public final List<ReplicatorInfo> m34916i() {
        return m34921n(new Comparator() { // from class: com.sunia.HTREnginev2.d2l
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m34910c;
                m34910c = PendingDocReplicators.m34910c((ReplicatorInfo) obj, (ReplicatorInfo) obj2);
                return m34910c;
            }
        });
    }

    public final boolean isEmpty() {
        LinkedHashMap<String, ReplicatorInfo> linkedHashMap = this.pendingReplicatorMap;
        return linkedHashMap == null || linkedHashMap.isEmpty();
    }

    /* renamed from: j */
    public final List<ReplicatorInfo> m34917j() {
        return m34921n(new Comparator() { // from class: com.sunia.HTREnginev2.e2l
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m34911d;
                m34911d = PendingDocReplicators.m34911d((ReplicatorInfo) obj, (ReplicatorInfo) obj2);
                return m34911d;
            }
        });
    }

    /* renamed from: k */
    public final ReplicatorInfo m34918k(List<ReplicatorInfo> pendingReplicatorList) {
        List<ReplicatorInfo> list = pendingReplicatorList;
        if (list == null || list.isEmpty()) {
            return null;
        }
        ReplicatorInfo replicatorInfo = pendingReplicatorList.get(0);
        removeReplicator(replicatorInfo.getDocumentId());
        return replicatorInfo;
    }

    /* renamed from: l */
    public final ReplicatorInfo m34919l() {
        return m34918k(m34916i());
    }

    /* renamed from: m */
    public final ReplicatorInfo m34920m() {
        return m34918k(m34917j());
    }

    /* renamed from: n */
    public final List<ReplicatorInfo> m34921n(Comparator<ReplicatorInfo> comparator) {
        List<ReplicatorInfo> m34915h = m34915h();
        CollectionsKt__MutableCollectionsJVMKt.sortWith(m34915h, comparator);
        return m34915h;
    }

    @Nullable
    public final ReplicatorInfo nextReplicator(int scheduleType) {
        if (scheduleType != 0 && scheduleType == 1) {
            return m34919l();
        }
        return m34920m();
    }

    public final void onReplicateFail(@NotNull String documentId, @NotNull ReplicatorInfo replicatorInfo) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(replicatorInfo, "replicatorInfo");
        if (replicatorInfo.getRetryCount() >= 3) {
            return;
        }
        KSyncLogUtils.INSTANCE.m35865e(PendingDocReplicators.class, "onReplicateFail: " + documentId);
        this.pendingReplicatorMap.put(documentId, replicatorInfo.addRetryCount().setTriggerSource(0));
    }

    public final void removeReplicator(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.pendingReplicatorMap.remove(documentId);
    }

    @NotNull
    public final ReplicatorInfo addReplicator(@NotNull String documentId, int triggerSource, int docType) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return m34912g(this, documentId, 0, 2, null).setTriggerSource(triggerSource);
    }
}
