package com.onyx.galaxy.note.common.data;

import androidx.annotation.WorkerThread;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.NoteCountChanged;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.sync.bean.NoteUsageInfo;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.p035db.NoteExtraProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.utils.NoteTagNodes;
import com.onyx.android.sdk.replicator.note.utils.NoteTreeNodes;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DummyFilter;
import com.onyx.galaxy.note.category.data.Filter;
import com.onyx.galaxy.note.category.data.FilterInfo;
import com.onyx.galaxy.note.category.data.FooterFilter;
import com.onyx.galaxy.note.category.data.HeaderFilter;
import com.onyx.galaxy.note.category.data.NoteAllFilter;
import com.onyx.galaxy.note.category.data.NoteDustBinFilter;
import com.onyx.galaxy.note.category.data.NoteFolderFilter;
import com.onyx.galaxy.note.category.data.NoteFolderRootFilter;
import com.onyx.galaxy.note.category.data.NoteSetNoTag;
import com.onyx.galaxy.note.category.data.NoteSetUnClassfied;
import com.onyx.galaxy.note.category.data.NoteTagFilter;
import com.onyx.galaxy.note.category.data.NoteTagRootFilter;
import com.onyx.galaxy.note.category.data.QuotaFilter;
import com.onyx.galaxy.note.category.data.SearchFilter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Scheduler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\"B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0004J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\f\u0012\u0004\u0012\u00020\t0\bj\u0002`\nJ\u0006\u0010\u001a\u001a\u00020\u001bJ\u0010\u0010\u001c\u001a\f\u0012\u0004\u0012\u00020\u00120\bj\u0002`\u0013J\b\u0010\u001d\u001a\u00020\u0004H\u0002J\u0006\u0010\u001e\u001a\u00020\u0015J\u0018\u0010\u001f\u001a\u00020\u00152\u0010\u0010 \u001a\f\u0012\u0004\u0012\u00020\t0\bj\u0002`\nJ\u0018\u0010!\u001a\u00020\u00152\u0010\u0010 \u001a\f\u0012\u0004\u0012\u00020\u00120\bj\u0002`\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\f\u0012\u0004\u0012\u00020\t0\bj\u0002`\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u0011\u001a\f\u0012\u0004\u0012\u00020\u00120\bj\u0002`\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;", "", "()V", "activeFilterInfo", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "filterInfoOp", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "folderRootNode", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "scheduler", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "getScheduler", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "scheduler$delegate", "Lkotlin/Lazy;", "tagRootNode", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "activate", "", "filterInfo", "activeFilterType", "", "getFolderRootNote", "getObserveOn", "Lio/reactivex/rxjava3/core/Scheduler;", "getTagRootNote", "initFilterInfo", Constants.RESET, "setFolderRootNode", "root", "setTagRootNode", "FilterManager", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteTreeBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTreeBundle.kt\ncom/onyx/galaxy/note/common/data/NoteTreeBundle\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n1#2:177\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteTreeBundle {

    @NotNull
    public static final NoteTreeBundle INSTANCE;

    @NotNull
    private static FilterInfo activeFilterInfo;

    @NotNull
    private static final JSONObjectOption<FilterInfo> filterInfoOp;

    @NotNull
    private static TreeNode<NoteModelBean> folderRootNode;

    /* renamed from: scheduler$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy scheduler;

    @NotNull
    private static TreeNode<NoteTagBean> tagRootNode;

    @Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00050\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0007J\u001e\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00050\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0003J\u000e\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0002J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$H\u0002J\u0006\u0010&\u001a\u00020'J\u000e\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020$R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006*"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;", "", "()V", "flatten", "", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "getFlatten$note_overseasRelease", "()Ljava/util/List;", "footerFilter", "Lcom/onyx/galaxy/note/category/data/FooterFilter;", "headerFilter", "Lcom/onyx/galaxy/note/category/data/HeaderFilter;", "noteAllFilter", "Lcom/onyx/galaxy/note/category/data/NoteAllFilter;", "noteDustBinFilter", "Lcom/onyx/galaxy/note/category/data/NoteDustBinFilter;", "noteFolderRootFilter", "Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilter;", "noteTagRootFilter", "Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter;", "quotaFlatten", "quotaRoot", "Lcom/onyx/galaxy/note/category/data/QuotaFilter;", "root", "", "Lcom/onyx/galaxy/note/category/data/Filter;", "searchFilter", "Lcom/onyx/galaxy/note/category/data/SearchFilter;", "fillList", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteExtraProvider", "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;", "fillQuotaList", "generateDefaultRoot", "getQuotaCount", "", "type", "getQuotaInfo", "Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;", "getRootFilterTitleRes", "filterType", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nNoteTreeBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTreeBundle.kt\ncom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,176:1\n288#2,2:177\n*S KotlinDebug\n*F\n+ 1 NoteTreeBundle.kt\ncom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager\n*L\n107#1:177,2\n*E\n"})
    /* loaded from: classes9.dex */
    public static final class FilterManager {

        @NotNull
        public static final FilterManager INSTANCE;

        @NotNull
        private static final List<FilterInfo> flatten;

        @NotNull
        private static final FooterFilter footerFilter;

        @NotNull
        private static final HeaderFilter headerFilter;

        @NotNull
        private static final NoteAllFilter noteAllFilter;

        @NotNull
        private static final NoteDustBinFilter noteDustBinFilter;

        @NotNull
        private static final NoteFolderRootFilter noteFolderRootFilter;

        @NotNull
        private static final NoteTagRootFilter noteTagRootFilter;

        @NotNull
        private static final List<FilterInfo> quotaFlatten;

        @NotNull
        private static final QuotaFilter quotaRoot;

        @NotNull
        private static final List<Filter> root;

        @NotNull
        private static final SearchFilter searchFilter;

        static {
            FilterManager filterManager = new FilterManager();
            INSTANCE = filterManager;
            headerFilter = new HeaderFilter();
            footerFilter = new FooterFilter();
            searchFilter = new SearchFilter();
            noteAllFilter = new NoteAllFilter();
            noteDustBinFilter = new NoteDustBinFilter();
            noteFolderRootFilter = new NoteFolderRootFilter();
            noteTagRootFilter = new NoteTagRootFilter();
            root = filterManager.generateDefaultRoot();
            flatten = new ArrayList();
            quotaRoot = new QuotaFilter();
            quotaFlatten = new ArrayList();
        }

        private FilterManager() {
        }

        @WorkerThread
        private final List<FilterInfo> fillQuotaList(NoteProvider provider, NoteExtraProvider noteExtraProvider) {
            List<FilterInfo> list = quotaFlatten;
            list.clear();
            quotaRoot.fillChildrenTree(list, provider, noteExtraProvider);
            return list;
        }

        private final List<Filter> generateDefaultRoot() {
            List<Filter> mutableListOf;
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(headerFilter, searchFilter, new DummyFilter(), noteAllFilter, new DummyFilter(), noteDustBinFilter, new DummyFilter(), noteFolderRootFilter, new DummyFilter(), noteTagRootFilter, footerFilter);
            return mutableListOf;
        }

        private final int getQuotaCount(int type) {
            Object obj;
            Iterator<T> it2 = quotaFlatten.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (((FilterInfo) obj).getType() == type) {
                    break;
                }
            }
            FilterInfo filterInfo = (FilterInfo) obj;
            if (filterInfo != null) {
                return (int) filterInfo.getCount();
            }
            return 0;
        }

        @WorkerThread
        @NotNull
        public final List<FilterInfo> fillList(@NotNull NoteProvider provider, @NotNull NoteExtraProvider noteExtraProvider) {
            Intrinsics.checkNotNullParameter(provider, "provider");
            Intrinsics.checkNotNullParameter(noteExtraProvider, "noteExtraProvider");
            fillQuotaList(provider, noteExtraProvider);
            flatten.clear();
            for (Filter filter : root) {
                List<FilterInfo> list = flatten;
                list.add(filter.info(provider));
                filter.fillChildrenTree(list, provider, noteExtraProvider);
            }
            AccountDataBundle.INSTANCE.getEventBusHolder().post(NoteCountChanged.INSTANCE);
            return flatten;
        }

        @NotNull
        public final List<FilterInfo> getFlatten$note_overseasRelease() {
            return flatten;
        }

        @NotNull
        public final NoteUsageInfo getQuotaInfo() {
            NoteUsageInfo noteUsageInfo = new NoteUsageInfo();
            noteUsageInfo.setDocCount(getQuotaCount(95));
            noteUsageInfo.setDocCountIncludeDustbin(getQuotaCount(94));
            noteUsageInfo.setDocHistoryCount(getQuotaCount(93));
            return noteUsageInfo;
        }

        public final int getRootFilterTitleRes(int filterType) {
            return filterType != 0 ? filterType != 1 ? filterType != 2 ? filterType != 3 ? filterType != 4 ? filterType != 6 ? filterType != 8 ? C10651R.string.all_note : C10651R.string.dustbin : C10651R.string.tag : C10651R.string.folder : C10651R.string.no_mark : C10651R.string.no_classify : C10651R.string.all_note : C10651R.string.search;
        }
    }

    static {
        Lazy lazy;
        NoteTreeBundle noteTreeBundle = new NoteTreeBundle();
        INSTANCE = noteTreeBundle;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.galaxy.note.common.data.NoteTreeBundle$scheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.INSTANCE.newSingleThreadManager();
            }
        });
        scheduler = lazy;
        folderRootNode = NoteTreeNodes.INSTANCE.createNoteRootNode();
        tagRootNode = NoteTagNodes.INSTANCE.createTagRootNode();
        filterInfoOp = FilterInfo.INSTANCE.getFilterInfoOption();
        activeFilterInfo = noteTreeBundle.initFilterInfo();
    }

    private NoteTreeBundle() {
    }

    private final RxScheduler getScheduler() {
        return (RxScheduler) scheduler.getValue();
    }

    private final FilterInfo initFilterInfo() {
        FilterInfo filterInfo = filterInfoOp.get();
        String uniqueId = filterInfo.getUniqueId();
        switch (filterInfo.getType()) {
            case 1:
                return NoteAllFilter.INSTANCE.getInfo();
            case 2:
                return NoteSetUnClassfied.INSTANCE.getInfo();
            case 3:
                return NoteSetNoTag.INSTANCE.getInfo();
            case 4:
                return NoteFolderRootFilter.INSTANCE.getInfo();
            case 5:
                filterInfo.setQueryArgs(NoteFolderFilter.INSTANCE.generateFolderFilterArgs(uniqueId));
                return filterInfo;
            case 6:
                return NoteTagRootFilter.INSTANCE.getInfo();
            case 7:
                filterInfo.setQueryArgs(NoteTagFilter.INSTANCE.generateTagFilterArgs(uniqueId));
                return filterInfo;
            case 8:
                return NoteDustBinFilter.INSTANCE.getInfo();
            default:
                return filterInfo;
        }
    }

    public final void activate(@NotNull FilterInfo filterInfo) {
        Intrinsics.checkNotNullParameter(filterInfo, "filterInfo");
        activeFilterInfo = filterInfo;
        filterInfoOp.put(filterInfo);
    }

    @NotNull
    public final FilterInfo activeFilterInfo() {
        return activeFilterInfo;
    }

    public final int activeFilterType() {
        return activeFilterInfo.getType();
    }

    @NotNull
    public final TreeNode<NoteModelBean> getFolderRootNote() {
        return folderRootNode;
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return getScheduler().getObserveOn();
    }

    @NotNull
    public final TreeNode<NoteTagBean> getTagRootNote() {
        return tagRootNode;
    }

    public final void reset() {
        folderRootNode = NoteTreeNodes.INSTANCE.createNoteRootNode();
        tagRootNode = NoteTagNodes.INSTANCE.createTagRootNode();
    }

    public final void setFolderRootNode(@NotNull TreeNode<NoteModelBean> root) {
        Intrinsics.checkNotNullParameter(root, "root");
        folderRootNode = root;
    }

    public final void setTagRootNode(@NotNull TreeNode<NoteTagBean> root) {
        Intrinsics.checkNotNullParameter(root, "root");
        tagRootNode = root;
    }
}
