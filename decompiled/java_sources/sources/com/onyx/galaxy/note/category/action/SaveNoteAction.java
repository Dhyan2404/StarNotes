package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
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
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/SaveNoteAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, "l", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", C6998g.f39679a, "Ljava/util/List;", "nodes", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "postEvent", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Z)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveNoteAction.kt\ncom/onyx/galaxy/note/category/action/SaveNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1855#2,2:40\n1549#2:42\n1620#2,3:43\n*S KotlinDebug\n*F\n+ 1 SaveNoteAction.kt\ncom/onyx/galaxy/note/category/action/SaveNoteAction\n*L\n28#1:40,2\n32#1:42\n32#1:43,3\n*E\n"})
/* loaded from: classes9.dex */
public final class SaveNoteAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> nodes;

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean postEvent;

    /* renamed from: com.onyx.galaxy.note.category.action.SaveNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C10963a<T, R> implements Function {
        public C10963a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(SaveNoteAction.this.m42497l(it2));
        }
    }

    public /* synthetic */ SaveNoteAction(List list, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? true : z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> observeOn = createNoteProviderObservable().map(new C10963a()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final boolean m42497l(NoteProvider provider) {
        int collectionSizeOrDefault;
        Iterator<T> it2 = this.nodes.iterator();
        while (it2.hasNext()) {
            ((SyncNoteModel) it2.next()).beforeSave();
        }
        NoteModelProviderKt.saveNoteList(provider, this.nodes);
        if (this.postEvent) {
            DocCollectionBundle.INSTANCE.postEvent(new OnSaveNoteEvent(this.nodes));
            KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
            List<SyncNoteModel> list = this.nodes;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it3 = list.iterator();
            while (it3.hasNext()) {
                arrayList.add(((SyncNoteModel) it3.next()).getUniqueId());
            }
            kSyncBundle.post(new SyncChangedNoteTreeEvent(arrayList));
        }
        Debug debug = Debug.INSTANCE;
        if (!debug.getDebug()) {
            return true;
        }
        debug.m32035d(SaveNoteAction.class, "save SyncNoteModel:" + JSONUtils.INSTANCE.toJson(this.nodes) + ' ', new Object[0]);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SaveNoteAction(@NotNull List<? extends SyncNoteModel> nodes, boolean z) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        this.nodes = nodes;
        this.postEvent = z;
    }
}
