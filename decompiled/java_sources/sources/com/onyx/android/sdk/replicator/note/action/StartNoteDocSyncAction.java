package com.onyx.android.sdk.replicator.note.action;

import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.DataSource;
import com.couchbase.lite.Expression;
import com.couchbase.lite.From;
import com.couchbase.lite.QueryBuilder;
import com.couchbase.lite.Result;
import com.couchbase.lite.SelectResult;
import com.couchbase.lite.Where;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.StartNoteDocReplicatorEvent;
import com.onyx.android.sdk.replicator.note.NoteReplicatorManager;
import com.onyx.android.sdk.replicator.note.bean.NoteCloudSyncCheckArgs;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBDataContext;
import com.onyx.android.sdk.replicator.note.proto.p036pb.UserPbFactory;
import com.onyx.android.sdk.replicator.replicator.BaseReplicator;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.onyx.android.sdk.replicator.replicator.action.PrepareSyncAction;
import com.onyx.android.sdk.replicator.replicator.action.PurgeForceRemoveNoteDataAction;
import com.onyx.android.sdk.replicator.utils.CouchExpressionUtils;
import com.onyx.android.sdk.replicator.utils.KSyncLogUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\b\u0010\b\u001a\u00020\u0007H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000f\u001a\u00020\u0007H\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;", "noteReplicatorManager", gon.f71290o0, "", "exportUserData", "l", "p", "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "replicator", C4921e.f26528e, "m", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;", C6997f.f39671c, "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;", "startReplicatorBean", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;", "checkArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nStartNoteDocSyncAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartNoteDocSyncAction.kt\ncom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n1855#2,2:136\n*S KotlinDebug\n*F\n+ 1 StartNoteDocSyncAction.kt\ncom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction\n*L\n128#1:136,2\n*E\n"})
/* loaded from: classes8.dex */
public final class StartNoteDocSyncAction extends BaseNoteSyncAction<StartNoteDocSyncAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final StartReplicatorBean startReplicatorBean;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final NoteCloudSyncCheckArgs checkArgs;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction$a */
    /* loaded from: classes8.dex */
    public static final class C7702a<T, R> implements Function {
        public C7702a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartNoteDocSyncAction apply(@NotNull PrepareSyncAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartNoteDocSyncAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction$b */
    /* loaded from: classes8.dex */
    public static final class C7703b<T, R> implements Function {
        public C7703b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteReplicatorManager> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartNoteDocSyncAction.this.getCurNoteRepManagerObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction$c */
    /* loaded from: classes8.dex */
    public static final class C7704c<T, R> implements Function {
        public C7704c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartNoteDocSyncAction> apply(@NotNull NoteReplicatorManager o) {
            Intrinsics.checkNotNullParameter(o, "o");
            return StartNoteDocSyncAction.this.start(o);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction$d */
    /* loaded from: classes8.dex */
    public static final class C7705d<T> implements Consumer {

        /* renamed from: e */
        public static final C7705d<T> f45456e = new C7705d<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            it2.start();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction$e */
    /* loaded from: classes8.dex */
    public static final class C7706e<T, R> implements Function {
        public C7706e() {
        }

        /* renamed from: a */
        public final void m35113a(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartNoteDocSyncAction.this.exportUserData();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m35113a((ReplicatorManager) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction$f */
    /* loaded from: classes8.dex */
    public static final class C7707f<T, R> implements Function {
        public C7707f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartNoteDocSyncAction> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartNoteDocSyncAction.this.m35104l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction$g */
    /* loaded from: classes8.dex */
    public static final class C7708g<T, R> implements Function {
        public C7708g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartNoteDocSyncAction> apply(@NotNull StartNoteDocSyncAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartNoteDocSyncAction.this.m35108p();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction$h */
    /* loaded from: classes8.dex */
    public static final class C7709h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NoteReplicatorManager f45461f;

        public C7709h(NoteReplicatorManager noteReplicatorManager) {
            this.f45461f = noteReplicatorManager;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartNoteDocSyncAction apply(@NotNull StartNoteDocSyncAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartNoteDocSyncAction.this.m35107o(this.f45461f.getNoteTreeReplicator());
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction$i */
    /* loaded from: classes8.dex */
    public static final class C7710i<T, R> implements Function {
        public C7710i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartNoteDocSyncAction apply(@NotNull StartNoteDocSyncAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartNoteDocSyncAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction$j */
    /* loaded from: classes8.dex */
    public static final class C7711j<T, R> implements Function {
        public C7711j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartNoteDocSyncAction apply(@NotNull PurgeForceRemoveNoteDataAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartNoteDocSyncAction.this;
        }
    }

    public /* synthetic */ StartNoteDocSyncAction(StartReplicatorBean startReplicatorBean, NoteCloudSyncCheckArgs noteCloudSyncCheckArgs, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(startReplicatorBean, (i & 2) != 0 ? new NoteCloudSyncCheckArgs() : noteCloudSyncCheckArgs);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartNoteDocSyncAction> create() {
        Observable<StartNoteDocSyncAction> flatMap = new CheckNoteSyncConditionAction(this.checkArgs).build().flatMap(new C7703b()).flatMap(new C7704c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public final void exportUserData() {
        UserPbFactory.INSTANCE.exportToPBFromDB(new UserPBDataContext(null, 1, null));
    }

    /* renamed from: l */
    public final Observable<StartNoteDocSyncAction> m35104l() {
        if (!NetworkUtils.INSTANCE.isWifiConnected(ResManager.INSTANCE.getAppContext())) {
            Observable<StartNoteDocSyncAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        if (KSyncBundle.INSTANCE.getSyncGateway() == null && AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            Observable map = new PrepareSyncAction().build().map(new C7702a());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        Observable<StartNoteDocSyncAction> just2 = Observable.just(this);
        Intrinsics.checkNotNull(just2);
        return just2;
    }

    /* renamed from: m */
    public final void m35105m(BaseReplicator replicator) {
        List<Result> list;
        List<String> mutableList;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        From from = QueryBuilder.select(SelectResult.property(CouchFieldKey.KEY_UNIQUE_ID), SelectResult.property("type")).from(DataSource.collection(replicator.ensureCollectionRequireNonNull()));
        Expression noteTreeExpression = CouchUtils.INSTANCE.noteTreeExpression();
        CouchExpressionUtils couchExpressionUtils = CouchExpressionUtils.INSTANCE;
        Where where = from.where(noteTreeExpression.and(couchExpressionUtils.isNoteEnabledExpression()).and(couchExpressionUtils.notCommitDocExpression()).and(couchExpressionUtils.docSyncEnableExpression()));
        Intrinsics.checkNotNullExpressionValue(where, "where(...)");
        try {
            list = where.execute().allResults();
        } catch (CouchbaseLiteException e) {
            e.printStackTrace();
            list = null;
        }
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (Result result : list) {
                String string = result.getString(CouchFieldKey.KEY_UNIQUE_ID);
                if (string != null) {
                    linkedHashSet.add(string);
                    if (result.getInt("type") == 0) {
                        arrayList.add(string);
                    }
                }
            }
        }
        StartReplicatorBean startReplicatorBean = this.startReplicatorBean;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) linkedHashSet);
        startReplicatorBean.setSyncDocIdList(mutableList);
    }

    /* renamed from: n */
    public final void m35106n() {
        NoteProvider noteProvider = KSyncBundle.INSTANCE.getDbProviderBundle().getNoteProvider(ProviderInfoUtils.INSTANCE.getUserNoteTreeProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId()));
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = this.startReplicatorBean.getSyncDocIdList().iterator();
        while (it2.hasNext()) {
            List<String> loadParentIds = NoteModelProviderKt.loadParentIds(noteProvider, (String) it2.next());
            arrayList.addAll(loadParentIds);
            this.startReplicatorBean.getLibraryDocIdList().addAll(loadParentIds);
        }
        this.startReplicatorBean.getSyncDocIdList().addAll(arrayList);
    }

    /* renamed from: o */
    public final StartNoteDocSyncAction m35107o(BaseReplicator replicator) {
        if (this.startReplicatorBean.getSyncAll()) {
            m35105m(replicator);
        } else {
            m35106n();
        }
        KSyncLogUtils.INSTANCE.m35864d(StartNoteDocSyncAction.class, "start note size: " + this.startReplicatorBean.getSyncDocIdList().size());
        replicator.post(new StartNoteDocReplicatorEvent(this.startReplicatorBean));
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: p */
    public final Observable<StartNoteDocSyncAction> m35108p() {
        if (!this.startReplicatorBean.getSyncAll()) {
            Observable<StartNoteDocSyncAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = new PurgeForceRemoveNoteDataAction(null, false, 3, 0 == true ? 1 : 0).build().map(new C7711j());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Observable<StartNoteDocSyncAction> start(@NotNull NoteReplicatorManager noteReplicatorManager) {
        Intrinsics.checkNotNullParameter(noteReplicatorManager, "noteReplicatorManager");
        Observable<StartNoteDocSyncAction> map = noteReplicatorManager.createObservable().doOnNext(C7705d.f45456e).map(new C7706e()).flatMap(new C7707f()).observeOn(noteReplicatorManager.getNoteTreeReplicator().getObserveOn()).flatMap(new C7708g()).observeOn(noteReplicatorManager.getNoteTreeReplicator().getObserveOn()).map(new C7709h(noteReplicatorManager)).map(new C7710i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public StartNoteDocSyncAction(@NotNull StartReplicatorBean startReplicatorBean, @NotNull NoteCloudSyncCheckArgs checkArgs) {
        Intrinsics.checkNotNullParameter(startReplicatorBean, "startReplicatorBean");
        Intrinsics.checkNotNullParameter(checkArgs, "checkArgs");
        this.startReplicatorBean = startReplicatorBean;
        this.checkArgs = checkArgs;
    }
}
