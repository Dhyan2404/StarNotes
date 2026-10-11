package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.SyncChangedNoteTreeEvent;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnSaveTagEvent;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/SaveTagAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, "l", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", C6998g.f39679a, "Ljava/util/List;", "nodes", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveTagAction.kt\ncom/onyx/galaxy/note/category/action/SaveTagAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n1855#2,2:38\n1549#2:40\n1620#2,3:41\n*S KotlinDebug\n*F\n+ 1 SaveTagAction.kt\ncom/onyx/galaxy/note/category/action/SaveTagAction\n*L\n27#1:38,2\n33#1:40\n33#1:41,3\n*E\n"})
/* loaded from: classes9.dex */
public final class SaveTagAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<SyncTagModel> nodes;

    /* renamed from: com.onyx.galaxy.note.category.action.SaveTagAction$a */
    /* loaded from: classes9.dex */
    public static final class C10967a<T, R> implements Function {
        public C10967a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(SaveTagAction.this.m42509l(it2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SaveTagAction(@NotNull List<? extends SyncTagModel> nodes) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        this.nodes = nodes;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> observeOn = createNoteProviderObservable().map(new C10967a()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final boolean m42509l(NoteProvider provider) {
        int collectionSizeOrDefault;
        for (SyncTagModel syncTagModel : this.nodes) {
            syncTagModel.beforeSave();
            syncTagModel.resetRevisionId();
        }
        NoteTagProviderKt.saveTagList(provider, this.nodes);
        DocCollectionBundle.INSTANCE.postEvent(new OnSaveTagEvent(this.nodes));
        KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
        List<SyncTagModel> list = this.nodes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((SyncTagModel) it2.next()).getUniqueId());
        }
        kSyncBundle.post(new SyncChangedNoteTreeEvent(arrayList));
        Debug.INSTANCE.m32035d(SaveTagAction.class, "save SyncTagModel:" + JSONUtils.INSTANCE.toJson(this.nodes) + ' ', new Object[0]);
        return true;
    }
}
