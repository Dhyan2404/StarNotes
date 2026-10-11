package com.onyx.android.sdk.note.request;

import androidx.core.provider.DocumentsContractCompat;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\f\u001a\u00020\n\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\r¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0014\u0010\f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u000bR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/MapNoteListToTreeRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/base/data/Tree;", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "execute", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "a", DocumentsContractCompat.f5557a, "", "b", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", "", "Ljava/util/List;", "noteModelList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMapNoteListToTreeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapNoteListToTreeRequest.kt\ncom/onyx/android/sdk/note/request/MapNoteListToTreeRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,74:1\n1855#2,2:75\n*S KotlinDebug\n*F\n+ 1 MapNoteListToTreeRequest.kt\ncom/onyx/android/sdk/note/request/MapNoteListToTreeRequest\n*L\n31#1:75,2\n*E\n"})
/* loaded from: classes8.dex */
public final class MapNoteListToTreeRequest extends RxBaseRequest<Tree<SyncNoteModel>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final NoteProvider noteProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> noteModelList;

    /* JADX WARN: Multi-variable type inference failed */
    public MapNoteListToTreeRequest(@NotNull NoteProvider noteProvider, @NotNull List<? extends SyncNoteModel> noteModelList) {
        Intrinsics.checkNotNullParameter(noteProvider, "noteProvider");
        Intrinsics.checkNotNullParameter(noteModelList, "noteModelList");
        this.noteProvider = noteProvider;
        this.noteModelList = noteModelList;
    }

    /* renamed from: a */
    public final CBQueryArgs m34117a() {
        List<? extends Object> listOf;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression("status", 1));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{0, 4});
        cBQueryArgs.andWith(couchUtils.nestedInExpression(listOf, CouchFieldKey.KEY_ASSOCIATION, CouchFieldKey.KEY_ASSOCIATION_TYPE));
        cBQueryArgs.setLimit(Integer.MAX_VALUE);
        cBQueryArgs.setVarargOrdering(couchUtils.getOrdering(CouchFieldKey.KEY_ORDER_INDEX, true));
        return cBQueryArgs;
    }

    /* renamed from: b */
    public final void m34118b(Tree<SyncNoteModel> tree) {
        if (Debug.INSTANCE.getDebug()) {
            Tree.INSTANCE.log(tree, new Function1<SyncNoteModel, String>() { // from class: com.onyx.android.sdk.note.request.MapNoteListToTreeRequest$logTree$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final String invoke(@NotNull SyncNoteModel it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return String.valueOf(it2.getTitle());
                }
            });
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Tree<SyncNoteModel> execute() {
        Tree<SyncNoteModel> loadNoteModelTree = NoteTagProviderKt.loadNoteModelTree(this.noteProvider, m34117a());
        Tree<SyncNoteModel> tree = new Tree<>();
        for (final SyncNoteModel syncNoteModel : this.noteModelList) {
            String title = syncNoteModel.getTitle();
            if (!(title == null || title.length() == 0)) {
                if (syncNoteModel.isDocument()) {
                    tree.addToChildren(syncNoteModel, CollectionKt.getSize(tree.getChildren()));
                } else {
                    Tree<SyncNoteModel> findChild = loadNoteModelTree.findChild(new Function1<SyncNoteModel, Boolean>() { // from class: com.onyx.android.sdk.note.request.MapNoteListToTreeRequest$execute$1$foundTree$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final Boolean invoke(@NotNull SyncNoteModel childItem) {
                            Intrinsics.checkNotNullParameter(childItem, "childItem");
                            return Boolean.valueOf(Intrinsics.areEqual(SyncNoteModel.this.getUniqueId(), childItem.getUniqueId()));
                        }
                    });
                    if (findChild != null) {
                        tree.addToChildren(findChild);
                    }
                }
            }
        }
        m34118b(tree);
        return tree;
    }
}
