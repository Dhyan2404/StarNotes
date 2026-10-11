package com.onyx.android.sdk.replicator.note.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.bean.DocProgressBean;
import com.onyx.android.sdk.replicator.bean.DocProgressListBean;
import com.onyx.android.sdk.replicator.bean.KSyncStatus;
import com.onyx.android.sdk.replicator.bean.OnyxErrorType;
import com.onyx.android.sdk.replicator.event.SyncProgressUpdateEvent;
import com.onyx.android.sdk.replicator.note.NoteReplicatorManager;
import com.onyx.android.sdk.replicator.note.NoteTreeReplicator;
import com.onyx.android.sdk.replicator.note.bean.NoteCloudSyncCheckArgs;
import com.onyx.android.sdk.replicator.note.bean.SyncNoteTreeBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.progress.SyncProgressBundle;
import com.onyx.android.sdk.replicator.replicator.action.PrepareSyncAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0002H\u0002J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u0010H\u0002R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001c\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00170\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/SyncNoteTreeAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;", "replicator", "m", "p", "", "l", "", "status", C4921e.f26528e, "", "e", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/base/common/error/OnyxException;", "q", "Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;", "syncNoteTreeBean", "", "Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;", C6998g.f39679a, "Ljava/util/List;", "syncProgressBeans", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSyncNoteTreeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncNoteTreeAction.kt\ncom/onyx/android/sdk/replicator/note/action/SyncNoteTreeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n766#2:129\n857#2,2:130\n1549#2:132\n1620#2,3:133\n1855#2,2:137\n1855#2,2:139\n1#3:136\n*S KotlinDebug\n*F\n+ 1 SyncNoteTreeAction.kt\ncom/onyx/android/sdk/replicator/note/action/SyncNoteTreeAction\n*L\n44#1:129\n44#1:130,2\n45#1:132\n45#1:133,3\n95#1:137,2\n113#1:139,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SyncNoteTreeAction extends BaseNoteSyncAction<SyncNoteTreeAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final SyncNoteTreeBean syncNoteTreeBean;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public List<DocProgressBean> syncProgressBeans;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.SyncNoteTreeAction$a */
    /* loaded from: classes8.dex */
    public static final class C7729a<T, R> implements Function {

        /* renamed from: e */
        public static final C7729a<T, R> f45490e = new C7729a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteTreeReplicator> apply(@NotNull NoteReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getNoteTreeReplicator().createObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.SyncNoteTreeAction$b */
    /* loaded from: classes8.dex */
    public static final class C7730b<T> implements Consumer {
        public C7730b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteTreeReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SyncNoteTreeAction.this.m35143m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.SyncNoteTreeAction$c */
    /* loaded from: classes8.dex */
    public static final class C7731c<T, R> implements Function {
        public C7731c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull NoteTreeReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SyncNoteTreeAction.this.m35142l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.SyncNoteTreeAction$d */
    /* loaded from: classes8.dex */
    public static final class C7732d<T> implements Consumer {
        public C7732d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SyncNoteTreeAction.this.m35145o(1);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.SyncNoteTreeAction$e */
    /* loaded from: classes8.dex */
    public static final class C7733e<T> implements Consumer {
        public C7733e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SyncNoteTreeAction.this.m35144n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.SyncNoteTreeAction$f */
    /* loaded from: classes8.dex */
    public static final class C7734f<T, R> implements Function {
        public C7734f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SyncNoteTreeAction> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SyncNoteTreeAction.this.m35146p();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.SyncNoteTreeAction$g */
    /* loaded from: classes8.dex */
    public static final class C7735g<T> implements Consumer {
        public C7735g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Debug.INSTANCE.m32045e(SyncNoteTreeAction.this.getClass(), it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.SyncNoteTreeAction$h */
    /* loaded from: classes8.dex */
    public static final class C7736h<T, R> implements Function {
        public C7736h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SyncNoteTreeAction apply(@NotNull PrepareSyncAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SyncNoteTreeAction.this;
        }
    }

    public SyncNoteTreeAction(@NotNull SyncNoteTreeBean syncNoteTreeBean) {
        Intrinsics.checkNotNullParameter(syncNoteTreeBean, "syncNoteTreeBean");
        this.syncNoteTreeBean = syncNoteTreeBean;
        this.syncProgressBeans = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SyncNoteTreeAction> create() {
        Observable flatMap = getCurNoteRepManagerObservable().flatMap(C7729a.f45490e).doOnNext(new C7730b()).flatMap(new C7731c()).doOnNext(new C7732d()).doOnError(new C7733e()).flatMap(new C7734f());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return RxjavaKt.onErrorReturnItemWithLog(flatMap, this);
    }

    /* renamed from: l */
    public final Observable<Unit> m35142l() {
        NoteCloudSyncCheckArgs noteCloudSyncCheckArgs = new NoteCloudSyncCheckArgs();
        noteCloudSyncCheckArgs.setCheckSpace(false);
        return new CheckNoteSyncConditionAction(noteCloudSyncCheckArgs).build();
    }

    /* renamed from: m */
    public final NoteTreeReplicator m35143m(NoteTreeReplicator replicator) {
        int collectionSizeOrDefault;
        List<String> list;
        List<SyncNoteModel> noteModels = this.syncNoteTreeBean.getNoteModels();
        if (noteModels == null) {
            return replicator;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : noteModels) {
            if (((SyncNoteModel) obj).isDocument()) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((SyncNoteModel) it2.next()).getUniqueId());
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList2);
        if (list.isEmpty()) {
            return replicator;
        }
        KSyncStatus kSyncStatus = new KSyncStatus();
        kSyncStatus.setStatus(7);
        ArrayList arrayList3 = new ArrayList();
        for (String str : list) {
            arrayList3.add(new DocProgressBean().setDocumentId(str).setScope("note").setSyncType(0).setForceSave(true).setAccountId(replicator.getCbUserId()).setSyncStatus(kSyncStatus));
            arrayList3.add(new DocProgressBean().setDocumentId(str).setScope("note").setSyncType(13).setForceSave(true).setAccountId(replicator.getCbUserId()).setSyncStatus(kSyncStatus));
        }
        this.syncProgressBeans = arrayList3;
        return replicator;
    }

    /* renamed from: n */
    public final void m35144n(Throwable e) {
        List<Integer> listOf;
        OnyxException transform$default = OnyxErrorHandler.transform$default(OnyxErrorHandler.INSTANCE, e, null, 1, null);
        if (transform$default.getCode() == 201005) {
            m35145o(7);
            return;
        }
        if (transform$default.getCode() == 201003) {
            m35145o(1);
            return;
        }
        int m35147q = m35147q(transform$default);
        Iterator<T> it2 = this.syncProgressBeans.iterator();
        while (it2.hasNext()) {
            KSyncStatus kSyncStatus = ((DocProgressBean) it2.next()).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_SYNC_STATUS java.lang.String();
            if (kSyncStatus != null) {
                listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(m35147q));
                kSyncStatus.addErrorTypeList(listOf);
            }
        }
        if (m35147q != OnyxErrorType.INSTANCE.getNONE()) {
            m35145o(3);
        }
    }

    /* renamed from: o */
    public final void m35145o(int status) {
        Iterator<T> it2 = this.syncProgressBeans.iterator();
        while (it2.hasNext()) {
            KSyncStatus kSyncStatus = ((DocProgressBean) it2.next()).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_SYNC_STATUS java.lang.String();
            if (kSyncStatus != null) {
                kSyncStatus.setStatus(status);
            }
        }
        SyncProgressBundle.INSTANCE.post(new SyncProgressUpdateEvent(new DocProgressListBean(this.syncProgressBeans)));
    }

    /* renamed from: p */
    public final Observable<SyncNoteTreeAction> m35146p() {
        if (KSyncBundle.INSTANCE.getSyncGateway() != null) {
            Observable<SyncNoteTreeAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = new PrepareSyncAction().build().doOnError(new C7735g()).map(new C7736h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final int m35147q(OnyxException e) {
        int code = e.getCode();
        return code != 101 ? code != 201001 ? code != 201006 ? code != 201008 ? OnyxErrorType.INSTANCE.getNONE() : OnyxErrorType.INSTANCE.getNETWORK_ERROR() : OnyxErrorType.INSTANCE.getUSER_STORAGE_TOO_LOW() : OnyxErrorType.INSTANCE.getNETWORK_ERROR() : OnyxErrorType.INSTANCE.getNONE();
    }
}
