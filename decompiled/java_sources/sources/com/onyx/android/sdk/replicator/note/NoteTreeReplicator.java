package com.onyx.android.sdk.replicator.note;

import com.couchbase.lite.Document;
import com.couchbase.lite.ReplicationFilter;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.bundle.DBProviderBundle;
import com.onyx.android.sdk.data.common.sync.MMKVBackup;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.bean.ReplicatorError;
import com.onyx.android.sdk.data.utils.StringOption;
import com.onyx.android.sdk.replicator.bean.DataReplicatorInfo;
import com.onyx.android.sdk.replicator.bean.ReplicatorArgs;
import com.onyx.android.sdk.replicator.note.NoteTreeReplicator;
import com.onyx.android.sdk.replicator.note.action.CloseNoteTreeReplicatorAction;
import com.onyx.android.sdk.replicator.note.action.HandleNoteTreeSyncErrorAction;
import com.onyx.android.sdk.replicator.note.action.HandlePushNoteTreeAction;
import com.onyx.android.sdk.replicator.note.action.StartPullNoteReplicatorAction;
import com.onyx.android.sdk.replicator.replicator.BaseReplicator;
import com.onyx.android.sdk.replicator.replicator.action.PrepareSyncAction;
import com.onyx.android.sdk.replicator.utils.CouchDocumentUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0006\u0010\u0006\u001a\u00020\u0004J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002R\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0014¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;", "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "Lio/reactivex/rxjava3/core/Observable;", "createObservable", "", "onSyncChangeFinished", "startDataReplicator", "Lcom/couchbase/lite/Document;", "document", "", "x", "A", "w", "y", "z", "Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;", "Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;", "dataReplicator", "", "getCouchName", "()Ljava/lang/String;", "couchName", "getCbUserId", "cbUserId", "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "providerBundle", "Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;", "replicatorArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NoteTreeReplicator extends BaseReplicator {

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final NoteUserDataReplicator dataReplicator;

    /* renamed from: com.onyx.android.sdk.replicator.note.NoteTreeReplicator$a */
    /* loaded from: classes8.dex */
    public static final class C7659a<T, R> implements Function {

        /* renamed from: e */
        public static final C7659a<T, R> f45377e = new C7659a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PrepareSyncAction> apply(@NotNull CloseNoteTreeReplicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new PrepareSyncAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.NoteTreeReplicator$b */
    /* loaded from: classes8.dex */
    public static final class C7660b<T, R> implements Function {
        public C7660b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteTreeReplicator apply(@NotNull NoteTreeReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NoteTreeReplicator.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteTreeReplicator(@NotNull DBProviderBundle providerBundle, @NotNull ReplicatorArgs replicatorArgs) {
        super(providerBundle, replicatorArgs);
        Intrinsics.checkNotNullParameter(providerBundle, "providerBundle");
        Intrinsics.checkNotNullParameter(replicatorArgs, "replicatorArgs");
        setPushFilter(new ReplicationFilter() { // from class: com.sunia.HTREnginev2.a5k
            @Override // com.couchbase.lite.ReplicationFilter
            public final boolean filtered(Document document, EnumSet enumSet) {
                boolean m35017u;
                m35017u = NoteTreeReplicator.m35017u(NoteTreeReplicator.this, document, enumSet);
                return m35017u;
            }
        });
        setPullFilter(new ReplicationFilter() { // from class: com.sunia.HTREnginev2.b5k
            @Override // com.couchbase.lite.ReplicationFilter
            public final boolean filtered(Document document, EnumSet enumSet) {
                boolean m35018v;
                m35018v = NoteTreeReplicator.m35018v(NoteTreeReplicator.this, document, enumSet);
                return m35018v;
            }
        });
        EventBusHolder eventBusHolder = getEventBusHolder();
        DataReplicatorInfo dataReplicatorInfo = new DataReplicatorInfo();
        dataReplicatorInfo.setUserId(replicatorArgs.getUserId());
        Unit unit = Unit.INSTANCE;
        this.dataReplicator = new NoteUserDataReplicator(eventBusHolder, dataReplicatorInfo);
    }

    /* renamed from: u */
    public static final boolean m35017u(NoteTreeReplicator this$0, Document document, EnumSet enumSet) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(document, "document");
        Intrinsics.checkNotNullParameter(enumSet, "<anonymous parameter 1>");
        return this$0.m35021x(document);
    }

    /* renamed from: v */
    public static final boolean m35018v(NoteTreeReplicator this$0, Document document, EnumSet enumSet) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(document, "document");
        Intrinsics.checkNotNullParameter(enumSet, "<anonymous parameter 1>");
        return this$0.m35021x(document);
    }

    /* renamed from: A */
    public final void m35019A() {
        if (hasSynced()) {
            String format = DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_HHMMSS().format(new Date());
            StringOption cloudSyncLastTime = MMKVBackup.INSTANCE.getCloudSyncLastTime();
            Intrinsics.checkNotNull(format);
            cloudSyncLastTime.put(format);
        }
    }

    @NotNull
    public final Observable<NoteTreeReplicator> createObservable() {
        Observable<NoteTreeReplicator> map = Observable.just(this).observeOn(getObserveOn()).map(new C7660b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.replicator.replicator.BaseReplicator
    @NotNull
    public String getCbUserId() {
        return ensureCouchDb().getUserId();
    }

    @Override // com.onyx.android.sdk.replicator.replicator.BaseReplicator
    @NotNull
    public String getCouchName() {
        return "NOTE_TREE";
    }

    @Override // com.onyx.android.sdk.replicator.replicator.BaseReplicator
    public void onSyncChangeFinished() {
        m35019A();
        m35022y();
        m35023z();
        m35020w();
        sendReplicatorInfoBroadcast();
    }

    public final void startDataReplicator() {
        this.dataReplicator.startSync();
    }

    /* renamed from: w */
    public final void m35020w() {
        ReplicatorError replicatorError = ensureCouchDb().replicatorError();
        if (replicatorError == null) {
            return;
        }
        RxBaseAction.execute$default(new HandleNoteTreeSyncErrorAction(this), null, null, null, 7, null);
        if (replicatorError.isTokenInvalid()) {
            new CloseNoteTreeReplicatorAction(this).build().flatMap(C7659a.f45377e).subscribe();
        }
    }

    /* renamed from: x */
    public final boolean m35021x(Document document) {
        CouchDocumentUtils couchDocumentUtils = CouchDocumentUtils.INSTANCE;
        return couchDocumentUtils.isCommitPoint(document) ? isEnabledSyncDocId(document.getString(CouchFieldKey.KEY_DOCUMENT_ID)) : couchDocumentUtils.isNoteTagDocument(document) ? isEnabledSyncDocId(document.getString("documentId")) || isEnabledSyncDocId(document.getId()) : isEnabledSyncDocId(document.getId());
    }

    /* renamed from: y */
    public final void m35022y() {
        List<String> detachPullUpdateDocIdList = detachPullUpdateDocIdList();
        List<String> detachPullDeleteDocIdList = detachPullDeleteDocIdList();
        if (detachPullUpdateDocIdList.isEmpty() && detachPullDeleteDocIdList.isEmpty()) {
            return;
        }
        RxBaseAction.execute$default(new StartPullNoteReplicatorAction(this, new ArrayList(detachPullUpdateDocIdList), new ArrayList(detachPullDeleteDocIdList)), null, null, null, 7, null);
    }

    /* renamed from: z */
    public final void m35023z() {
        List<String> detachPushUpdateDocIdList = detachPushUpdateDocIdList();
        if (detachPushUpdateDocIdList.isEmpty()) {
            return;
        }
        RxBaseAction.execute$default(new HandlePushNoteTreeAction(this, new ArrayList(detachPushUpdateDocIdList)), null, null, null, 7, null);
    }
}
