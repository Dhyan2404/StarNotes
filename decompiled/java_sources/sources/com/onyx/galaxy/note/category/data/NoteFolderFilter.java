package com.onyx.galaxy.note.category.data;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.p035db.NoteExtraProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.onyx.galaxy.note.settings.data.NoteConfigKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 !2\u00020\u0001:\u0001!B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J&\u0010\u000f\u001a\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u000e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u0003H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R$\u0010\u0007\u001a\f\u0012\u0004\u0012\u00020\t0\bj\u0002`\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/NoteFolderFilter;", "Lcom/onyx/galaxy/note/category/data/Filter;", "folderId", "", "(Ljava/lang/String;)V", "getFolderId", "()Ljava/lang/String;", "noteTreeNode", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "getNoteTreeNode", "()Lcom/onyx/android/sdk/base/data/TreeNode;", "setNoteTreeNode", "(Lcom/onyx/android/sdk/base/data/TreeNode;)V", "fillChildrenTree", "", "list", "", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteExtraProvider", "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;", PrivilegedApp.f6532i, "pathList", "", "Lcom/onyx/galaxy/note/category/data/PathEntry;", "queryArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "type", "", CouchFieldKey.KEY_UNIQUE_ID, "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteFolderFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteFolderFilter.kt\ncom/onyx/galaxy/note/category/data/NoteFolderFilter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n1#2:79\n1549#3:80\n1620#3,3:81\n*S KotlinDebug\n*F\n+ 1 NoteFolderFilter.kt\ncom/onyx/galaxy/note/category/data/NoteFolderFilter\n*L\n63#1:80\n63#1:81,3\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteFolderFilter implements Filter {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private final String folderId;
    public TreeNode<NoteModelBean> noteTreeNode;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/NoteFolderFilter$Companion;", "", "()V", "generateFolderFilterArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", CouchFieldKey.KEY_UNIQUE_ID, "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CBQueryArgs generateFolderFilterArgs(@Nullable String uniqueId) {
            return NoteConfigKt.getCommonNoteArgs().andWith(CouchUtils.INSTANCE.equalOrNullExpression(CouchFieldKey.KEY_PARENT_UNIQUE_ID, uniqueId));
        }

        private Companion() {
        }
    }

    public NoteFolderFilter(@Nullable String str) {
        this.folderId = str;
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    public void fillChildrenTree(@NotNull List<FilterInfo> list, @NotNull NoteProvider provider, @NotNull NoteExtraProvider noteExtraProvider) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(noteExtraProvider, "noteExtraProvider");
    }

    @Nullable
    public final String getFolderId() {
        return this.folderId;
    }

    @NotNull
    public final TreeNode<NoteModelBean> getNoteTreeNode() {
        TreeNode<NoteModelBean> treeNode = this.noteTreeNode;
        if (treeNode != null) {
            return treeNode;
        }
        Intrinsics.throwUninitializedPropertyAccessException("noteTreeNode");
        return null;
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public FilterInfo info(@NotNull NoteProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        String uniqueId = uniqueId();
        String title = getNoteTreeNode().getData().getTitle();
        if (title == null) {
            title = "";
        }
        NoteFolderFilterInfo noteFolderFilterInfo = new NoteFolderFilterInfo(uniqueId, title, getNoteTreeNode());
        noteFolderFilterInfo.setQueryArgs(queryArgs());
        return noteFolderFilterInfo;
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public List<PathEntry> pathList() {
        int collectionSizeOrDefault;
        List<PathEntry> mutableList;
        List<TreeNode<NoteModelBean>> pathNoteTreeNodes = getNoteTreeNode().getPathNoteTreeNodes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(pathNoteTreeNodes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = pathNoteTreeNodes.iterator();
        while (it2.hasNext()) {
            TreeNode treeNode = (TreeNode) it2.next();
            String uniqueId = ((NoteModelBean) treeNode.getData()).getUniqueId();
            String title = ((NoteModelBean) treeNode.getData()).getTitle();
            Intrinsics.checkNotNull(title);
            arrayList.add(new PathEntry(uniqueId, title, treeNode.levelToRoot() - 1, ((NoteModelBean) treeNode.getData()).getStyle().getColor()));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        String string = ResManager.INSTANCE.getString(C10651R.string.folder);
        Intrinsics.checkNotNull(string);
        mutableList.add(0, new PathEntry(NoteConfigConst.FOLDER_ROOT_ID, string, 0, 0, 8, null));
        return mutableList;
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public CBQueryArgs queryArgs() {
        return INSTANCE.generateFolderFilterArgs(uniqueId());
    }

    public final void setNoteTreeNode(@NotNull TreeNode<NoteModelBean> treeNode) {
        Intrinsics.checkNotNullParameter(treeNode, "<set-?>");
        this.noteTreeNode = treeNode;
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    public int type() {
        return 5;
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public String uniqueId() {
        String str = this.folderId;
        return str == null ? "" : str;
    }
}
