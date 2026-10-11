package com.onyx.android.sdk.replicator.note;

import androidx.core.app.NotificationCompat;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.replicator.bean.DataReplicatorInfo;
import com.onyx.android.sdk.replicator.bean.DocProgressBean;
import com.onyx.android.sdk.replicator.bean.DocProgressListBean;
import com.onyx.android.sdk.replicator.bean.KSyncStatus;
import com.onyx.android.sdk.replicator.bean.ReplicatorInfo;
import com.onyx.android.sdk.replicator.event.DataSyncProgressEvent;
import com.onyx.android.sdk.replicator.event.DocRequestEvent;
import com.onyx.android.sdk.replicator.event.NoteDocSyncFinishEvent;
import com.onyx.android.sdk.replicator.event.SyncProgressUpdateEvent;
import com.onyx.android.sdk.replicator.note.action.CheckNoteDocTreeSyncPendingAction;
import com.onyx.android.sdk.replicator.progress.SyncProgressBundle;
import com.onyx.android.sdk.replicator.replicator.DataReplicator;
import com.onyx.android.sdk.replicator.replicator.DocReplicator;
import com.onyx.android.sdk.replicator.utils.KSyncLogUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010(\u001a\u00020&\u0012\u0006\u00105\u001a\u000204¢\u0006\u0004\b6\u00107J\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\fH\u0007J\b\u0010\u000e\u001a\u00020\u0004H\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\b\u0010\u0011\u001a\u00020\u0000H\u0016J\b\u0010\u0012\u001a\u00020\u0000H\u0016J\b\u0010\u0013\u001a\u00020\u0000H\u0016J\u0006\u0010\u0014\u001a\u00020\u0000J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\u0016\u001a\u00020\u0004H\u0002J\u0018\u0010\u001a\u001a\u00020\u00042\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0002J\b\u0010\u001b\u001a\u00020\u0004H\u0002J\b\u0010\u001c\u001a\u00020\u0004H\u0002J\b\u0010\u001d\u001a\u00020\u0004H\u0002J\b\u0010\u001e\u001a\u00020\u0004H\u0002J\u0010\u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0018H\u0002J\u0018\u0010\"\u001a\u00020\u00042\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0002J\u0018\u0010$\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u0018H\u0002J\u0010\u0010%\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u0007H\u0002R\u0014\u0010(\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010'R\u001b\u0010,\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010)\u001a\u0004\b*\u0010+R\u001b\u00100\u001a\u00020-8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010)\u001a\u0004\b.\u0010/R\u001a\u00103\u001a\b\u0012\u0004\u0012\u00020\u000f018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u00102¨\u00068"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;", "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;", "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", "createDocDataReplicator", "", Constants.RESET, "stop", "", "getDocumentId", "Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;", NotificationCompat.CATEGORY_EVENT, "onDocDataSyncProgressEvent", "Lcom/onyx/android/sdk/replicator/event/DocRequestEvent;", "onDocRequestEvent", "postDocSyncProgressImpl", "", "tryCloseReplicator", "closeReplicator", gon.f71290o0, "resumeReplicator", "startDataReplicator", "j", "i", "", "", "errorTypes", C6999h.f39688c, C6997f.f39671c, "l", "p", C4921e.f26537n, "status", GoogleApiAvailabilityLight.f29016b, "types", "e", "requestId", C4921e.f26528e, "m", "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;", "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;", "treeReplicator", "Lkotlin/Lazy;", C6998g.f39679a, "()Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", "dataReplicator", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "c", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "rxScheduler", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "postProgressFilter", "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;", PrivilegedApp.f6532i, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NoteDocReplicator extends DocReplicator {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final NoteTreeReplicator treeReplicator;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy dataReplicator;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy rxScheduler;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RxFilter<Boolean> postProgressFilter;

    /* renamed from: com.onyx.android.sdk.replicator.note.NoteDocReplicator$a */
    /* loaded from: classes8.dex */
    public static final class C7653a<T> implements Consumer {
        public C7653a() {
        }

        /* renamed from: a */
        public final void m35009a(boolean z) {
            NoteDocReplicator.this.postDocSyncProgressImpl();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m35009a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteDocReplicator(@NotNull NoteTreeReplicator treeReplicator, @NotNull ReplicatorInfo info) {
        super(info);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(treeReplicator, "treeReplicator");
        Intrinsics.checkNotNullParameter(info, "info");
        this.treeReplicator = treeReplicator;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DataReplicator>() { // from class: com.onyx.android.sdk.replicator.note.NoteDocReplicator$dataReplicator$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DataReplicator invoke() {
                return NoteDocReplicator.this.createDocDataReplicator();
            }
        });
        this.dataReplicator = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.replicator.note.NoteDocReplicator$rxScheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.INSTANCE.newSingleThreadManager();
            }
        });
        this.rxScheduler = lazy2;
        this.postProgressFilter = new RxFilter<>();
        getEventBusHolder().register(this);
        getReplicatorInfo().onOpen();
    }

    /* renamed from: c */
    private final RxScheduler m34996c() {
        return (RxScheduler) this.rxScheduler.getValue();
    }

    @NotNull
    public final DataReplicator createDocDataReplicator() {
        EventBusHolder eventBusHolder = getEventBusHolder();
        DataReplicatorInfo dataReplicatorInfo = new DataReplicatorInfo();
        dataReplicatorInfo.setUserId(getReplicatorInfo().getUserId());
        dataReplicatorInfo.setDocumentId(getReplicatorInfo().getDocumentId());
        dataReplicatorInfo.setDebugLog(getReplicatorInfo().getDebugLog());
        return new NoteDocDataReplicator(eventBusHolder, dataReplicatorInfo);
    }

    /* renamed from: e */
    public final void m34997e(List<Integer> types) {
        if (types != null) {
            getSyncStatus().addErrorTypes(types);
        }
    }

    /* renamed from: f */
    public final void m34998f() {
        m35004l();
        if (getSyncStatus().isFinished()) {
            KSyncLogUtils.INSTANCE.m35864d(NoteDocReplicator.class, "note doc: " + getDocumentId() + " sync finish: " + getSyncStatus().toShortString());
            m35003k();
            return;
        }
        if (getReplicatorInfo().getDebugLog()) {
            KSyncLogUtils.INSTANCE.m35864d(NoteDocReplicator.class, "note doc: " + getDocumentId() + " can not sync finish:" + getSyncStatus());
        }
    }

    /* renamed from: g */
    public final DataReplicator m34999g() {
        return (DataReplicator) this.dataReplicator.getValue();
    }

    @Override // com.onyx.android.sdk.replicator.replicator.DocReplicator
    @NotNull
    public String getDocumentId() {
        return getReplicatorInfo().getDocumentId();
    }

    /* renamed from: h */
    public final void m35000h(List<Integer> errorTypes) {
        m35006n(3);
        m34997e(errorTypes);
        m34998f();
        KSyncLogUtils.INSTANCE.m35865e(NoteDocReplicator.class, "documentId: " + getDocumentId() + "data sync error");
    }

    /* renamed from: i */
    public final void m35001i() {
        m35006n(2);
        m34998f();
    }

    /* renamed from: j */
    public final void m35002j(DataSyncProgressEvent event) {
        if (event.isSuccess()) {
            m35001i();
        } else {
            m35000h(event.getErrorTypes());
        }
    }

    /* renamed from: k */
    public final void m35003k() {
        this.treeReplicator.getEventBusHolder().post(new NoteDocSyncFinishEvent(getReplicatorInfo()).setSuccess(getSyncStatus().isSyncSuccess()));
    }

    /* renamed from: l */
    public final void m35004l() {
        if (!getSyncStatus().isFinished()) {
            this.postProgressFilter.onNext(Boolean.TRUE);
        } else {
            this.postProgressFilter.dispose();
            postDocSyncProgressImpl();
        }
    }

    /* renamed from: m */
    public final void m35005m(String requestId) {
        getSyncStatus().removeRequestStatus(requestId);
    }

    /* renamed from: n */
    public final void m35006n(int status) {
        getSyncStatus().setDataStatus(status);
    }

    /* renamed from: o */
    public final void m35007o(String requestId, int status) {
        getSyncStatus().setRequestStatus(requestId, status);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocDataSyncProgressEvent(@NotNull DataSyncProgressEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getSyncStatus().setTotalDataCount(event.getTotal()).setCompletedDataCount(event.getCom.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants.OPERATION_STATUS_COMPLETED java.lang.String()).setCompletedPullDataCount(event.getPullCompletedCount()).setCompletedPushDataCount(event.getPushCompletedCount());
        m35004l();
        if (event.getIsFinished()) {
            if (event.isSuccess()) {
                getSyncStatus().updateSyncCloudSuccess();
            }
            m35002j(event);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocRequestEvent(@NotNull DocRequestEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getStatus() == 1) {
            m35007o(event.getRequestId(), event.getStatus());
        } else {
            m35005m(event.getRequestId());
        }
        m34998f();
    }

    /* renamed from: p */
    public final void m35008p() {
        this.postProgressFilter.dispose();
        this.postProgressFilter.subscribeThrottleFirst(500L, new C7653a());
    }

    @Override // com.onyx.android.sdk.replicator.replicator.DocReplicator
    public void postDocSyncProgressImpl() {
        KSyncStatus kSyncStatusWithCloudFile = getSyncStatus().getKSyncStatusWithCloudFile();
        if (getSyncStatus().isFinished()) {
            kSyncStatusWithCloudFile.setPullAt(getSyncStatus().hasPullDocData() ? new Date() : kSyncStatusWithCloudFile.getPullAt());
            kSyncStatusWithCloudFile.setPushAt(getSyncStatus().hasPushDocData() ? new Date() : kSyncStatusWithCloudFile.getPushAt());
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new DocProgressBean().setDocumentId(getDocumentId()).setScope("note").setSyncType(0).setAccountId(getReplicatorInfo().getUserId()).setSyncStatus(kSyncStatusWithCloudFile));
        if (getSyncStatus().isFinished() && getReplicatorInfo().isNoteDocument()) {
            if (getSyncStatus().hasPushedData()) {
                DocProgressBean accountId = new DocProgressBean().setDocumentId(getDocumentId()).setScope("note").setSyncType(13).setAccountId(getReplicatorInfo().getUserId());
                KSyncStatus kSyncStatus = new KSyncStatus();
                kSyncStatus.setStatus(1);
                Unit unit = Unit.INSTANCE;
                arrayList.add(accountId.setSyncStatus(kSyncStatus));
            } else {
                RxBaseAction.execute$default(new CheckNoteDocTreeSyncPendingAction(this.treeReplicator, getDocumentId()), null, null, null, 7, null);
            }
        }
        SyncProgressBundle.INSTANCE.post(new SyncProgressUpdateEvent(new DocProgressListBean(arrayList)));
    }

    @Override // com.onyx.android.sdk.replicator.replicator.DocReplicator
    public void reset() {
        getReplicatorInfo().reset();
    }

    @NotNull
    public final NoteDocReplicator startDataReplicator() {
        if (!AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            return this;
        }
        m35006n(1);
        m34999g().startSync();
        return this;
    }

    @Override // com.onyx.android.sdk.replicator.replicator.DocReplicator
    public void stop() {
        m34999g().stop();
    }

    @Override // com.onyx.android.sdk.replicator.replicator.DocReplicator
    public boolean tryCloseReplicator() throws Exception {
        if (!getSyncStatus().isFinished()) {
            return false;
        }
        closeReplicator();
        return true;
    }

    @Override // com.onyx.android.sdk.replicator.replicator.DocReplicator
    @NotNull
    public NoteDocReplicator closeReplicator() throws Exception {
        getEventBusHolder().unRegister(this);
        m34999g().close();
        getReplicatorInfo().onClose();
        m34996c().shutdown();
        getReplicatorInfo().printSyncLog();
        return this;
    }

    @Override // com.onyx.android.sdk.replicator.replicator.DocReplicator
    @NotNull
    public NoteDocReplicator resumeReplicator() throws Exception {
        m34999g().startSync();
        return this;
    }

    @Override // com.onyx.android.sdk.replicator.replicator.DocReplicator
    @NotNull
    public NoteDocReplicator start() throws Exception {
        m35008p();
        startDataReplicator();
        return this;
    }
}
