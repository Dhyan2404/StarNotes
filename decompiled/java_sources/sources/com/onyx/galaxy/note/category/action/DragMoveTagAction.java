package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
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
import com.onyx.galaxy.note.category.event.OnDragMoveTagEvent;
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
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B-\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\u0004\b\u0017\u0010\u0018J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\r\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\nR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/DragMoveTagAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, "l", "", C6998g.f39679a, Constants.STRING_SIG, "originTagId", C6999h.f39688c, "targetTagId", "", "i", "I", "dragState", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "j", "Ljava/util/List;", "nodes", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDragMoveTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragMoveTagAction.kt\ncom/onyx/galaxy/note/category/action/DragMoveTagAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n1855#2,2:48\n1549#2:50\n1620#2,3:51\n*S KotlinDebug\n*F\n+ 1 DragMoveTagAction.kt\ncom/onyx/galaxy/note/category/action/DragMoveTagAction\n*L\n37#1:48,2\n43#1:50\n43#1:51,3\n*E\n"})
/* loaded from: classes9.dex */
public final class DragMoveTagAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String originTagId;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String targetTagId;

    /* renamed from: i, reason: from kotlin metadata */
    public final int dragState;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<SyncTagModel> nodes;

    /* renamed from: com.onyx.galaxy.note.category.action.DragMoveTagAction$a */
    /* loaded from: classes9.dex */
    public static final class C10836a<T, R> implements Function {
        public C10836a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(DragMoveTagAction.this.m42265l(it2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DragMoveTagAction(@NotNull String originTagId, @NotNull String targetTagId, int i, @NotNull List<? extends SyncTagModel> nodes) {
        Intrinsics.checkNotNullParameter(originTagId, "originTagId");
        Intrinsics.checkNotNullParameter(targetTagId, "targetTagId");
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        this.originTagId = originTagId;
        this.targetTagId = targetTagId;
        this.dragState = i;
        this.nodes = nodes;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> observeOn = createNoteProviderObservable().map(new C10836a()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final boolean m42265l(NoteProvider provider) {
        int collectionSizeOrDefault;
        for (SyncTagModel syncTagModel : this.nodes) {
            syncTagModel.beforeSave();
            syncTagModel.resetRevisionId();
        }
        NoteTagProviderKt.saveTagList(provider, this.nodes);
        DocCollectionBundle.INSTANCE.postEvent(new OnDragMoveTagEvent(this.originTagId, this.targetTagId, this.dragState));
        KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
        List<SyncTagModel> list = this.nodes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((SyncTagModel) it2.next()).getUniqueId());
        }
        kSyncBundle.post(new SyncChangedNoteTreeEvent(arrayList));
        Debug.INSTANCE.m32035d(DragMoveTagAction.class, "drag move tag SyncTagModel:" + JSONUtils.INSTANCE.toJson(this.nodes) + ' ', new Object[0]);
        return true;
    }
}
