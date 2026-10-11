package com.onyx.galaxy.note.category.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.SyncChangedNoteTreeEvent;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnSaveNoteEvent;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B)\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\nH\u0002R\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0012R \u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\r0\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/UpdateNoteAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "l", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", C6998g.f39679a, "Ljava/util/List;", "nodes", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "postEvent", "i", "refreshUpdateAt", "", "", "j", "Ljava/util/Map;", "nodeByIdMap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;ZZ)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateNoteAction.kt\ncom/onyx/galaxy/note/category/action/UpdateNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1855#2,2:83\n1855#2,2:85\n1549#2:87\n1620#2,3:88\n*S KotlinDebug\n*F\n+ 1 UpdateNoteAction.kt\ncom/onyx/galaxy/note/category/action/UpdateNoteAction\n*L\n41#1:83,2\n52#1:85,2\n69#1:87\n69#1:88,3\n*E\n"})
/* loaded from: classes9.dex */
public final class UpdateNoteAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> nodes;

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean postEvent;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean refreshUpdateAt;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Map<String, SyncNoteModel> nodeByIdMap;

    /* renamed from: com.onyx.galaxy.note.category.action.UpdateNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C11008a<T, R> implements Function {
        public C11008a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull UpdateNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateNoteAction.this.createNoteProviderObservable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.UpdateNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C11009b<T> implements Consumer {
        public C11009b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateNoteAction.this.m42592m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.UpdateNoteAction$c */
    /* loaded from: classes9.dex */
    public static final class C11010c<T, R> implements Function {
        public C11010c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(UpdateNoteAction.this.m42593n(it2));
        }
    }

    public /* synthetic */ UpdateNoteAction(List list, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? true : z, (i & 4) != 0 ? true : z2);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        if (this.nodes.isEmpty()) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<Boolean> observeOn = Observable.just(this).flatMap(new C11008a()).doOnNext(new C11009b()).map(new C11010c()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final CBQueryArgs m42591l() {
        List<? extends Object> list;
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        list = CollectionsKt___CollectionsKt.toList(this.nodeByIdMap.keySet());
        return new CBQueryArgs().andWith(couchUtils.inIdsExpression(list));
    }

    /* renamed from: m */
    public final void m42592m() {
        for (SyncNoteModel syncNoteModel : this.nodes) {
            this.nodeByIdMap.put(syncNoteModel.getUniqueId(), syncNoteModel);
        }
    }

    /* renamed from: n */
    public final boolean m42593n(NoteProvider provider) {
        List<SyncNoteModel> loadNoteList;
        int collectionSizeOrDefault;
        CBQueryArgs m72249clone = m42591l().m72249clone();
        m72249clone.m72251setLimit(200);
        do {
            loadNoteList = NoteModelProviderKt.loadNoteList(provider, m72249clone);
            for (SyncNoteModel syncNoteModel : loadNoteList) {
                SyncNoteModel syncNoteModel2 = this.nodeByIdMap.get(syncNoteModel.getUniqueId());
                if (syncNoteModel2 != null) {
                    syncNoteModel.updateSelectField(syncNoteModel2);
                    syncNoteModel.ensureCreatedAt();
                    syncNoteModel.ensureUpdatedAt();
                    if (this.refreshUpdateAt) {
                        syncNoteModel.forceUpdatedAt();
                    }
                }
            }
            NoteModelProviderKt.saveNoteList(provider, loadNoteList);
            m72249clone.m72252setOffset(m72249clone.getOffset() + loadNoteList.size());
        } while (loadNoteList.size() >= m72249clone.getLimit());
        if (this.postEvent) {
            DocCollectionBundle.INSTANCE.postEvent(new OnSaveNoteEvent(this.nodes));
            KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
            List<SyncNoteModel> list = this.nodes;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(((SyncNoteModel) it2.next()).getUniqueId());
            }
            kSyncBundle.post(new SyncChangedNoteTreeEvent(arrayList));
        }
        Debug debug = Debug.INSTANCE;
        if (!debug.getDebug()) {
            return true;
        }
        debug.m32035d(UpdateNoteAction.class, "save SyncNoteModel:" + JSONUtils.INSTANCE.toJson(this.nodes) + ' ', new Object[0]);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UpdateNoteAction(@NotNull List<? extends SyncNoteModel> nodes, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        this.nodes = nodes;
        this.postEvent = z;
        this.refreshUpdateAt = z2;
        this.nodeByIdMap = new LinkedHashMap();
    }
}
