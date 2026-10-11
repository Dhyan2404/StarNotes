package com.onyx.galaxy.note.category.data;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
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

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J&\u0010\u000f\u001a\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u000e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\u0006\u0010\u001e\u001a\u00020\u0003J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\u0003H\u0016R$\u0010\u0005\u001a\f\u0012\u0004\u0012\u00020\u00070\u0006j\u0002`\bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/NoteTagFilter;", "Lcom/onyx/galaxy/note/category/data/Filter;", CouchFieldKey.KEY_TAG_ID, "", "(Ljava/lang/String;)V", "noteTagNode", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "getNoteTagNode", "()Lcom/onyx/android/sdk/base/data/TreeNode;", "setNoteTagNode", "(Lcom/onyx/android/sdk/base/data/TreeNode;)V", "getTagId", "()Ljava/lang/String;", "fillChildrenTree", "", "list", "", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteExtraProvider", "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;", PrivilegedApp.f6532i, "pathList", "", "Lcom/onyx/galaxy/note/category/data/PathEntry;", "queryArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "title", "type", "", CouchFieldKey.KEY_UNIQUE_ID, "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteTagFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTagFilter.kt\ncom/onyx/galaxy/note/category/data/NoteTagFilter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,75:1\n1#2:76\n1549#3:77\n1620#3,3:78\n*S KotlinDebug\n*F\n+ 1 NoteTagFilter.kt\ncom/onyx/galaxy/note/category/data/NoteTagFilter\n*L\n60#1:77\n60#1:78,3\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteTagFilter implements Filter {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public TreeNode<NoteTagBean> noteTagNode;

    @Nullable
    private final String tagId;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/NoteTagFilter$Companion;", "", "()V", "generateTagFilterArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", CouchFieldKey.KEY_UNIQUE_ID, "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CBQueryArgs generateTagFilterArgs(@NotNull String uniqueId) {
            Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
            CBQueryArgs commonNoteArgs = NoteConfigKt.getCommonNoteArgs();
            commonNoteArgs.andWith(CouchUtils.INSTANCE.listContains(CouchFieldKey.KEY_TAG_ID_LIST, uniqueId));
            return commonNoteArgs;
        }

        private Companion() {
        }
    }

    public NoteTagFilter(@Nullable String str) {
        this.tagId = str;
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    public void fillChildrenTree(@NotNull List<FilterInfo> list, @NotNull NoteProvider provider, @NotNull NoteExtraProvider noteExtraProvider) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(noteExtraProvider, "noteExtraProvider");
    }

    @NotNull
    public final TreeNode<NoteTagBean> getNoteTagNode() {
        TreeNode<NoteTagBean> treeNode = this.noteTagNode;
        if (treeNode != null) {
            return treeNode;
        }
        Intrinsics.throwUninitializedPropertyAccessException("noteTagNode");
        return null;
    }

    @Nullable
    public final String getTagId() {
        return this.tagId;
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public FilterInfo info(@NotNull NoteProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        NoteTagFilterInfo noteTagFilterInfo = new NoteTagFilterInfo(uniqueId(), title(), getNoteTagNode());
        noteTagFilterInfo.setQueryArgs(queryArgs());
        return noteTagFilterInfo;
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public List<PathEntry> pathList() {
        int collectionSizeOrDefault;
        List<PathEntry> mutableList;
        List<TreeNode<NoteTagBean>> pathNoteTreeNodes = getNoteTagNode().getPathNoteTreeNodes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(pathNoteTreeNodes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = pathNoteTreeNodes.iterator();
        while (it2.hasNext()) {
            TreeNode treeNode = (TreeNode) it2.next();
            arrayList.add(new PathEntry(((NoteTagBean) treeNode.getData()).getUniqueId(), ((NoteTagBean) treeNode.getData()).getContent(), treeNode.levelToRoot() - 1, ((NoteTagBean) treeNode.getData()).getStyle().getColor()));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        String string = ResManager.INSTANCE.getString(C10651R.string.tag);
        Intrinsics.checkNotNull(string);
        mutableList.add(0, new PathEntry(NoteConfigConst.TAG_ROOT_ID, string, 0, 0, 8, null));
        return mutableList;
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public CBQueryArgs queryArgs() {
        return INSTANCE.generateTagFilterArgs(uniqueId());
    }

    public final void setNoteTagNode(@NotNull TreeNode<NoteTagBean> treeNode) {
        Intrinsics.checkNotNullParameter(treeNode, "<set-?>");
        this.noteTagNode = treeNode;
    }

    @NotNull
    public final String title() {
        return getNoteTagNode().getData().getContent();
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    public int type() {
        return 7;
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public String uniqueId() {
        String str = this.tagId;
        return str == null ? "" : str;
    }
}
