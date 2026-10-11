package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.SyncChangedNoteTreeEvent;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnDragMoveFolderEvent;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B-\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\u0004\b\u0017\u0010\u0018J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\r\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\nR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/DragMoveFolderAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "", "l", "", C6998g.f39679a, Constants.STRING_SIG, "originFolderId", C6999h.f39688c, "targetFolderId", "", "i", "I", "dragState", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "j", "Ljava/util/List;", "nodes", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDragMoveFolderAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragMoveFolderAction.kt\ncom/onyx/galaxy/note/category/action/DragMoveFolderAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,38:1\n1549#2:39\n1620#2,3:40\n*S KotlinDebug\n*F\n+ 1 DragMoveFolderAction.kt\ncom/onyx/galaxy/note/category/action/DragMoveFolderAction\n*L\n35#1:39\n35#1:40,3\n*E\n"})
/* loaded from: classes9.dex */
public final class DragMoveFolderAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String originFolderId;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String targetFolderId;

    /* renamed from: i, reason: from kotlin metadata */
    public final int dragState;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> nodes;

    /* renamed from: com.onyx.galaxy.note.category.action.DragMoveFolderAction$a */
    /* loaded from: classes9.dex */
    public static final class C10834a<T, R> implements Function {
        public C10834a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull DragMoveFolderAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DragMoveFolderAction.this.m42262m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DragMoveFolderAction$b */
    /* loaded from: classes9.dex */
    public static final class C10835b<T> implements Consumer {
        public C10835b() {
        }

        /* renamed from: a */
        public final void m42264a(boolean z) {
            DragMoveFolderAction.this.m42261l();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42264a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DragMoveFolderAction(@NotNull String originFolderId, @NotNull String targetFolderId, int i, @NotNull List<? extends SyncNoteModel> nodes) {
        Intrinsics.checkNotNullParameter(originFolderId, "originFolderId");
        Intrinsics.checkNotNullParameter(targetFolderId, "targetFolderId");
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        this.originFolderId = originFolderId;
        this.targetFolderId = targetFolderId;
        this.dragState = i;
        this.nodes = nodes;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> observeOn = Observable.just(this).flatMap(new C10834a()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final void m42261l() {
        int collectionSizeOrDefault;
        DocCollectionBundle.INSTANCE.postEvent(new OnDragMoveFolderEvent(this.originFolderId, this.targetFolderId, this.dragState));
        KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
        List<SyncNoteModel> list = this.nodes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((SyncNoteModel) it2.next()).getUniqueId());
        }
        kSyncBundle.post(new SyncChangedNoteTreeEvent(arrayList));
        Debug.INSTANCE.m32035d(DragMoveFolderAction.class, "drag move folder SyncNoteModel:" + JSONUtils.INSTANCE.toJson(this.nodes) + ' ', new Object[0]);
    }

    /* renamed from: m */
    public final Observable<Boolean> m42262m() {
        Observable<Boolean> doOnNext = new UpdateNoteAction(this.nodes, false, false, 6, null).build().doOnNext(new C10835b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}
