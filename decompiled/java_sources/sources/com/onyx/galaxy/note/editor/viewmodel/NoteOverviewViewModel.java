package com.onyx.galaxy.note.editor.viewmodel;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBeanList;
import com.onyx.android.sdk.replicator.note.bean.SortData;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.category.action.LoadNoteListAction;
import com.onyx.galaxy.note.category.action.LoadNoteTabListAction;
import com.onyx.galaxy.note.category.data.NoteAllFilter;
import com.onyx.galaxy.note.category.data.NotePageBean;
import com.onyx.galaxy.note.category.data.NoteSelectType;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.utils.AutoReLockNoteManager;
import com.onyx.galaxy.note.utils.NoteSortHelper;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b-\u0010.J\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bJ\u001a\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\r2\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011J\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00162\b\b\u0002\u0010\u0015\u001a\u00020\u0014H\u0002R#\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u000e0\u00188\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR#\u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\u00188\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u001b\u001a\u0004\b \u0010\u001dR\"\u0010(\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006/"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "isSearchMode", "", "key", "", "loadNoteData", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "loadNoteTabData", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "currentTab", "Landroidx/lifecycle/LiveData;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "loadNoteTabList", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "item", "isNoteReLocked", "Lcom/onyx/galaxy/note/category/data/NoteSelectType;", "noteSelectType", "Lcom/onyx/android/sdk/replicator/note/bean/SortData;", "d", "Landroidx/lifecycle/MutableLiveData;", "Lcom/onyx/galaxy/note/category/data/NotePageBean;", "i", "Landroidx/lifecycle/MutableLiveData;", "getNoteListData", "()Landroidx/lifecycle/MutableLiveData;", "noteListData", "j", "getNoteTabListData", "noteTabListData", C4921e.f26537n, Constants.STRING_SIG, "getSearchKey", "()Ljava/lang/String;", "setSearchKey", "(Ljava/lang/String;)V", "searchKey", "Lcom/onyx/galaxy/note/utils/NoteSortHelper;", "l", "Lcom/onyx/galaxy/note/utils/NoteSortHelper;", "sortHelper", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteOverviewViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOverviewViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n288#2,2:106\n1#3:108\n*S KotlinDebug\n*F\n+ 1 NoteOverviewViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel\n*L\n63#1:106,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteOverviewViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<List<NotePageBean>> noteListData = new MutableLiveData<>();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<List<NoteTabData>> noteTabListData = new MutableLiveData<>();

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public String searchKey = "";

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final NoteSortHelper sortHelper = new NoteSortHelper();

    @SourceDebugExtension({"SMAP\nNoteOverviewViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOverviewViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$loadNoteData$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n1549#2:106\n1620#2,3:107\n*S KotlinDebug\n*F\n+ 1 NoteOverviewViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$loadNoteData$1\n*L\n55#1:106\n55#1:107,3\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.NoteOverviewViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12575a<T, R> implements Function {

        /* renamed from: e */
        public static final C12575a<T, R> f61167e = new C12575a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NotePageBean> apply(@NotNull NoteModelBeanList it2) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(it2, "it");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(it2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<NoteModelBean> it3 = it2.iterator();
            while (it3.hasNext()) {
                arrayList.add(new NotePageBean(2, it3.next(), null, 4, null));
            }
            return arrayList;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.NoteOverviewViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12576b<T, R> implements Function {
        public C12576b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NotePageBean> apply(@NotNull List<NotePageBean> it2) {
            List<NotePageBean> mutableList;
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteSortHelper noteSortHelper = NoteOverviewViewModel.this.sortHelper;
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) it2);
            return noteSortHelper.sortNotePageList(mutableList);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.NoteOverviewViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C12577c<T> implements Consumer {
        public C12577c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NotePageBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteOverviewViewModel.this.getNoteListData().postValue(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.NoteOverviewViewModel$d */
    /* loaded from: classes9.dex */
    public static final class C12578d<T> implements Consumer {
        public C12578d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NoteTabData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteOverviewViewModel.this.getNoteTabListData().postValue(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.NoteOverviewViewModel$e */
    /* loaded from: classes9.dex */
    public static final class C12579e<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ MutableLiveData<List<NoteTabData>> f61171e;

        public C12579e(MutableLiveData<List<NoteTabData>> mutableLiveData) {
            this.f61171e = mutableLiveData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NoteTabData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f61171e.postValue(it2);
        }
    }

    public NoteOverviewViewModel() {
        loadNoteData("");
    }

    /* renamed from: e */
    public static /* synthetic */ SortData m50396e(NoteOverviewViewModel noteOverviewViewModel, NoteSelectType noteSelectType, int i, Object obj) {
        if ((i & 1) != 0) {
            noteSelectType = NoteSelectType.TAB_ALL;
        }
        return noteOverviewViewModel.m50397d(noteSelectType);
    }

    public static /* synthetic */ void loadNoteData$default(NoteOverviewViewModel noteOverviewViewModel, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        noteOverviewViewModel.loadNoteData(str);
    }

    /* renamed from: d */
    public final SortData m50397d(NoteSelectType noteSelectType) {
        if (this.sortHelper.getSortType().getValue() != SortBy.Manual) {
            return null;
        }
        SortData sortData = new SortData();
        sortData.setFilterId(NoteAllFilter.INSTANCE.getInfo().getUniqueId());
        sortData.setSubFilterId(String.valueOf(noteSelectType.ordinal()));
        return sortData;
    }

    @NotNull
    public final MutableLiveData<List<NotePageBean>> getNoteListData() {
        return this.noteListData;
    }

    @NotNull
    public final MutableLiveData<List<NoteTabData>> getNoteTabListData() {
        return this.noteTabListData;
    }

    @NotNull
    public final String getSearchKey() {
        return this.searchKey;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean isNoteReLocked(@NotNull NoteModelBean item) {
        Intrinsics.checkNotNullParameter(item, "item");
        List<NoteTabData> value = this.noteTabListData.getValue();
        NoteTabData noteTabData = null;
        if (value != null) {
            Iterator<T> it2 = value.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (Intrinsics.areEqual(((NoteTabData) next).getUniqueId(), item.getUniqueId())) {
                    noteTabData = next;
                    break;
                }
            }
            noteTabData = noteTabData;
        }
        if (noteTabData == null) {
            return item.hasEncryption();
        }
        AutoReLockNoteManager autoReLockNoteManager = AutoReLockNoteManager.INSTANCE;
        if (!autoReLockNoteManager.checkEnableAutoReLock()) {
            return false;
        }
        String uniqueId = item.getUniqueId();
        if (autoReLockNoteManager.isNoteReLocked(uniqueId)) {
            return true;
        }
        return Intrinsics.areEqual(noteTabData.getEncrypted(), Boolean.TRUE) && !autoReLockNoteManager.hasAutoReLockNoteTask(uniqueId);
    }

    public final boolean isSearchMode() {
        return StringKt.isNotBlank(this.searchKey);
    }

    public final void loadNoteData(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.searchKey = key;
        CBQueryArgs m72249clone = NoteAllFilter.INSTANCE.getInfo().getQueryArgs().m72249clone();
        if (StringKt.isNotBlank(key)) {
            m72249clone.andWith(CouchUtils.INSTANCE.likeExpression("title", '%' + key + '%', true));
        }
        new LoadNoteListAction(m72249clone, m50397d(NoteSelectType.TAB_ALL)).build().map(C12575a.f61167e).map(new C12576b()).doOnNext(new C12577c()).subscribe();
    }

    public final void loadNoteTabData(@NotNull EditorBundle editorBundle) {
        Object obj;
        NoteModelBean noteModelBean;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        String docId = EditorBundleKt.docId(editorBundle);
        List<NotePageBean> value = this.noteListData.getValue();
        if (value != null) {
            Iterator<T> it2 = value.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                NoteModelBean noteModelBean2 = ((NotePageBean) next).getNoteModelBean();
                if (Intrinsics.areEqual(noteModelBean2 != null ? noteModelBean2.getUniqueId() : null, docId)) {
                    obj = next;
                    break;
                }
            }
            NotePageBean notePageBean = (NotePageBean) obj;
            if (notePageBean == null || (noteModelBean = notePageBean.getNoteModelBean()) == null) {
                return;
            }
            new LoadNoteTabListAction(noteModelBean).build().doOnNext(new C12578d()).subscribe();
        }
    }

    @NotNull
    public final LiveData<List<NoteTabData>> loadNoteTabList(@NotNull SyncNoteModel currentTab) {
        Intrinsics.checkNotNullParameter(currentTab, "currentTab");
        MutableLiveData mutableLiveData = new MutableLiveData();
        new LoadNoteTabListAction(currentTab).build().doOnNext(new C12579e(mutableLiveData)).subscribe();
        return mutableLiveData;
    }

    public final void setSearchKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.searchKey = str;
    }
}
