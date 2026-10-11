package com.onyx.galaxy.note.category.data;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.data.NewTreeKt;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.p035db.NoteExtraProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.TagExtraModel;
import com.onyx.galaxy.note.category.data.Filter;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.onyx.galaxy.note.settings.data.NoteConfigKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J&\u0010\f\u001a\u00020\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016J(\u0010\u0016\u001a\u00020\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0010\u0010\u0019\u001a\f\u0012\u0004\u0012\u00020\u001b0\u001aj\u0002`\u001cH\u0002¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter;", "Lcom/onyx/galaxy/note/category/data/Filter;", "()V", "fill", "", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteExtraProvider", "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;", "list", "", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "fillChildrenTree", "hasChild", "", PrivilegedApp.f6532i, "queryArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "type", "", CouchFieldKey.KEY_UNIQUE_ID, "", "updateExpand", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TagExtraModel;", "rootNode", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteTagRootFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTagRootFilter.kt\ncom/onyx/galaxy/note/category/data/NoteTagRootFilter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n1549#2:106\n1620#2,3:107\n1549#2:110\n1620#2,3:111\n1855#2,2:114\n*S KotlinDebug\n*F\n+ 1 NoteTagRootFilter.kt\ncom/onyx/galaxy/note/category/data/NoteTagRootFilter\n*L\n90#1:106\n90#1:107,3\n100#1:110\n100#1:111,3\n101#1:114,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteTagRootFilter implements Filter {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final NoteTagRootFilterInfo info;

    @NotNull
    private static final CBQueryArgs tagRootFilterArgs;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter$Companion;", "", "()V", PrivilegedApp.f6532i, "Lcom/onyx/galaxy/note/category/data/NoteTagRootFilterInfo;", "getInfo", "()Lcom/onyx/galaxy/note/category/data/NoteTagRootFilterInfo;", "tagRootFilterArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "getTagRootFilterArgs", "()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "getNoteTagRootExpandOp", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final NoteTagRootFilterInfo getInfo() {
            return NoteTagRootFilter.info;
        }

        @NotNull
        public final BooleanOption getNoteTagRootExpandOp() {
            return MMKVUtils.INSTANCE.booleanOption(NoteConfigConst.TAG_ROOT_ID, true);
        }

        @NotNull
        public final CBQueryArgs getTagRootFilterArgs() {
            return NoteTagRootFilter.tagRootFilterArgs;
        }

        private Companion() {
        }
    }

    static {
        CBQueryArgs commonNoteArgs = NoteConfigKt.getCommonNoteArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        commonNoteArgs.andWith(couchUtils.listNotEmptyExpression(CouchFieldKey.KEY_TAG_ID_LIST));
        commonNoteArgs.andWith(couchUtils.equalExpression("type", 1));
        tagRootFilterArgs = commonNoteArgs;
        info = new NoteTagRootFilterInfo();
    }

    private final void fill(NoteProvider provider, NoteExtraProvider noteExtraProvider, List<FilterInfo> list) {
        int collectionSizeOrDefault;
        if (INSTANCE.getNoteTagRootExpandOp().get()) {
            TreeNode<NoteTagBean> loadDocTagTreeNode = NoteTagProviderKt.loadDocTagTreeNode(provider);
            updateExpand(noteExtraProvider.loadExpandedTagExtraList(), loadDocTagTreeNode);
            List<TreeNode<NoteTagBean>> findNodes$default = TreeNode.findNodes$default(loadDocTagTreeNode, new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.data.NoteTagRootFilter$fill$noteTagFilters$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(it2.isParentAllExpand() && !it2.isRootNode());
                }
            }, null, NewTreeKt.STRATEGY_DEPTH_FIRST, 2, null);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findNodes$default, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (TreeNode<NoteTagBean> treeNode : findNodes$default) {
                NoteTagFilter noteTagFilter = new NoteTagFilter(treeNode.getData().getUniqueId());
                noteTagFilter.setNoteTagNode(treeNode);
                arrayList.add(noteTagFilter.info(provider));
            }
            list.addAll(arrayList);
        }
    }

    private final boolean hasChild(NoteProvider provider) {
        return provider.queryCount(NoteTagProviderKt.createDocTagQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression("status", 0))) > 0;
    }

    private final void updateExpand(List<TagExtraModel> list, TreeNode<NoteTagBean> rootNode) {
        int collectionSizeOrDefault;
        List mutableList;
        List<TagExtraModel> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TagExtraModel) it2.next()).getUniqueId());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        Iterator it3 = mutableList.iterator();
        while (it3.hasNext()) {
            TreeNode<NoteTagBean> findNode = rootNode.getTree().findNode((String) it3.next());
            if (findNode != null) {
                findNode.setExpand(true);
            }
        }
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    public void fillChildrenTree(@NotNull List<FilterInfo> list, @NotNull NoteProvider provider, @NotNull NoteExtraProvider noteExtraProvider) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(noteExtraProvider, "noteExtraProvider");
        fill(provider, noteExtraProvider, list);
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public FilterInfo info(@NotNull NoteProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        FilterInfo info2 = Filter.DefaultImpls.info(this, provider);
        info2.setHasChild(hasChild(provider));
        info2.setQueryArgs(queryArgs());
        return info2;
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public List<PathEntry> pathList() {
        return Filter.DefaultImpls.pathList(this);
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public CBQueryArgs queryArgs() {
        return tagRootFilterArgs;
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    public int type() {
        return info.getType();
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public String uniqueId() {
        return info.getUniqueId();
    }
}
