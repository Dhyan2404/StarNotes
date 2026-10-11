package com.onyx.android.sdk.replicator.replicator.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.bean.PendingDocReplicators;
import com.onyx.android.sdk.replicator.bean.ReplicatorInfo;
import com.onyx.android.sdk.replicator.replicator.DocReplicator;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.onyx.android.sdk.replicator.utils.KSyncLogUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\b\u0010\n\u001a\u00020\u0005H\u0002J\b\u0010\u000b\u001a\u00020\u0005H\u0002¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/ScheduleNextDocReplicatorAction;", "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, C4921e.f26528e, "", "l", "", "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;", "m", GoogleApiAvailabilityLight.f29016b, "p", "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "replicatorManager", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ScheduleNextDocReplicatorAction extends BaseReplicatorManagerAction<ScheduleNextDocReplicatorAction> {

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.ScheduleNextDocReplicatorAction$a */
    /* loaded from: classes8.dex */
    public static final class C7881a<T, R> implements Function {
        public C7881a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<ReplicatorInfo> apply(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScheduleNextDocReplicatorAction.this.m35748m();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.ScheduleNextDocReplicatorAction$b */
    /* loaded from: classes8.dex */
    public static final class C7882b<T, R> implements Function {
        public C7882b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloseFinishedDocReplicatorAction> apply(@NotNull List<ReplicatorInfo> replicatorInfos) {
            Intrinsics.checkNotNullParameter(replicatorInfos, "replicatorInfos");
            return new CloseFinishedDocReplicatorAction(ScheduleNextDocReplicatorAction.this.getReplicatorManager()).setReplicatorInfoList(replicatorInfos).create();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.ScheduleNextDocReplicatorAction$c */
    /* loaded from: classes8.dex */
    public static final class C7883c<T, R> implements Function {
        public C7883c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ScheduleNextDocReplicatorAction apply(@NotNull CloseFinishedDocReplicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScheduleNextDocReplicatorAction.this.m35750o();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.ScheduleNextDocReplicatorAction$d */
    /* loaded from: classes8.dex */
    public static final class C7884d<T, R> implements Function {
        public C7884d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ScheduleNextDocReplicatorAction apply(@NotNull ScheduleNextDocReplicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScheduleNextDocReplicatorAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScheduleNextDocReplicatorAction(@NotNull ReplicatorManager replicatorManager) {
        super(replicatorManager);
        Intrinsics.checkNotNullParameter(replicatorManager, "replicatorManager");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ScheduleNextDocReplicatorAction> create() {
        Observable<ScheduleNextDocReplicatorAction> map = createObservable().map(new C7881a()).flatMap(new C7882b()).observeOn(getReplicatorManager().getObserveOn()).map(new C7883c()).map(new C7884d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m35747l() {
        getReplicatorManager().clearQueue();
        getReplicatorManager().postProgress();
    }

    /* renamed from: m */
    public final List<ReplicatorInfo> m35748m() {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, DocReplicator>> it2 = getReplicatorManager().getWaitingDocReplicatorMap().entrySet().iterator();
        while (it2.hasNext()) {
            DocReplicator value = it2.next().getValue();
            if (value.getReplicatorInfo().isWaitingClose()) {
                arrayList.add(value.getReplicatorInfo());
            }
        }
        return arrayList;
    }

    /* renamed from: n */
    public final void m35749n() {
        m35751p();
        KSyncLogUtils.INSTANCE.m35864d(getReplicatorManager().getClass(), "doc sync finish");
        getReplicatorManager().onAllDocsSyncFinished();
    }

    /* renamed from: o */
    public final ScheduleNextDocReplicatorAction m35750o() throws Exception {
        ReplicatorInfo nextReplicator;
        if (!NetworkUtils.INSTANCE.isWifiConnected(ResManager.INSTANCE.getAppContext())) {
            m35747l();
            return this;
        }
        if (!getReplicatorManager().isSyncEnabled()) {
            m35747l();
            KSyncLogUtils.INSTANCE.m35864d(ScheduleNextDocReplicatorAction.class, "have disable sync");
            return this;
        }
        PendingDocReplicators pendingDocReplicators = getReplicatorManager().getPendingDocReplicators();
        int size = getReplicatorManager().getRunningDocReplicatorMap().size();
        int size2 = pendingDocReplicators.getSize();
        int i = 3 - size;
        if (size2 <= 0 && size <= 0) {
            m35749n();
        }
        KSyncLogUtils kSyncLogUtils = KSyncLogUtils.INSTANCE;
        kSyncLogUtils.m35864d(getReplicatorManager().getClass(), "doc runningCount: " + size + ", pendingCount: " + size2 + ", maxSyncCount:3");
        if (i <= 0) {
            return this;
        }
        if (KSyncBundle.INSTANCE.getDebugLog() && size > 0) {
            kSyncLogUtils.m35864d(ScheduleNextDocReplicatorAction.class, "running doc id list:" + getReplicatorManager().getRunningDocInfo());
        }
        Iterator<Map.Entry<String, DocReplicator>> it2 = getReplicatorManager().getRunningDocReplicatorMap().entrySet().iterator();
        while (it2.hasNext()) {
            DocReplicator value = it2.next().getValue();
            String cBUserId = value.getCBUserId();
            if (StringUtils.isNotBlank(cBUserId)) {
                AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
                if (!StringUtils.equals(accountDataBundle.getSyncUserId(), cBUserId)) {
                    KSyncLogUtils.INSTANCE.m35865e(ScheduleNextDocReplicatorAction.class, "error user note syncing current user: " + accountDataBundle.getSyncUserId() + " note doc user: " + cBUserId + ' ' + value.getReplicatorInfo());
                }
            }
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (!pendingDocReplicators.isEmpty() && (nextReplicator = pendingDocReplicators.nextReplicator(0)) != null) {
                if (getReplicatorManager().isRunningDocReplicator(nextReplicator.getDocumentId())) {
                    pendingDocReplicators.addReplicator(nextReplicator.getDocumentId(), nextReplicator.getTriggerSource(), nextReplicator.getDocType()).setUserId(getReplicatorManager().getNoteTreeReplicator().getCbUserId());
                } else {
                    nextReplicator.reset();
                    RxBaseAction.execute$default(new StartDocReplicatorAction(getReplicatorManager(), getReplicatorManager().ensureDocReplicator(nextReplicator)), null, null, null, 7, null);
                }
            }
        }
        return this;
    }

    /* renamed from: p */
    public final void m35751p() {
        KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
        if (kSyncBundle.isNeedUpdateUserStorage()) {
            kSyncBundle.setNeedUpdateUserStorage(false);
            kSyncBundle.updateUserStorage(kSyncBundle.isNeedRecalculateUserStorage());
            kSyncBundle.setNeedRecalculateUserStorage(false);
        }
    }
}
