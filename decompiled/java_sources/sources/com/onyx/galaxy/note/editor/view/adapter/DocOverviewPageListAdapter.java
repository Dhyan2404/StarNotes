package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.StringUtils;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.signature.ObjectKey;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualBookmarkModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.PageDataModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.common.glide.GlideApp;
import com.onyx.galaxy.note.common.glide.GlideRequest;
import com.onyx.galaxy.note.databinding.ItemDocOverviewPageBinding;
import com.onyx.galaxy.note.editor.data.ThumbnailSizeType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u0018\u0012\u0004\u0012\u00020\u0002\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00050\u0001:\u0001mB!\u0012\u0006\u0010K\u001a\u00020F\u0012\u0006\u0010P\u001a\u00020\u0015\u0012\b\b\u0002\u0010X\u001a\u00020Q¢\u0006\u0004\bk\u0010lJ*\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006H\u0002J\u0016\u0010\u000b\u001a\u00020\n2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006H\u0002J\"\u0010\u000e\u001a\u00020\n2\u0010\u0010\f\u001a\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00052\u0006\u0010\r\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0004H\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0017\u001a\u00020\nH\u0014J\u0018\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0013H\u0016J\u000e\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u0015J\u0006\u0010\u001d\u001a\u00020\u0013J\u0014\u0010\u001f\u001a\u00020\n2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0006J\u0016\u0010\"\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u0013J(\u0010'\u001a\u00020\n2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0012\b\u0002\u0010&\u001a\f\u0012\u0004\u0012\u00020\n0$j\u0002`%J\u001c\u0010+\u001a\u00020\n2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020(0\u00062\u0006\u0010*\u001a\u00020\u0013J\u0014\u0010.\u001a\u00020\n2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020,0\u0006J\u0014\u0010/\u001a\u00020\n2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006J\u000e\u00101\u001a\u00020\n2\u0006\u00100\u001a\u00020\u0013J\u0006\u00102\u001a\u00020\nJ\u0006\u00103\u001a\u00020\u0013J,\u00105\u001a\u00020\n2\u0010\u0010\f\u001a\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00052\u0006\u00104\u001a\u00020\u00132\b\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0014J\u0010\u00107\u001a\u00020\u00152\u0006\u00106\u001a\u00020\u0002H\u0016J\u0010\u00109\u001a\u00020\n2\u0006\u0010\f\u001a\u000208H\u0016J:\u00105\u001a\u00020\n2\u0010\u0010\f\u001a\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00052\u0006\u00104\u001a\u00020\u00132\b\u0010\r\u001a\u0004\u0018\u00010\u00022\f\u0010;\u001a\b\u0012\u0004\u0012\u00020:0\u0006H\u0014J*\u0010A\u001a\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00052\u0006\u0010=\u001a\u00020<2\u0006\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020\u0013H\u0014J\u0014\u0010C\u001a\u00020\n2\f\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00130\u0006J\u0014\u0010E\u001a\u00020\n2\f\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00110\u0006R\u0017\u0010K\u001a\u00020F8\u0006¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bI\u0010JR\u0017\u0010P\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\bL\u0010M\u001a\u0004\bN\u0010OR\"\u0010X\u001a\u00020Q8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bR\u0010S\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR\"\u0010\\\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u001e0Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0016\u0010_\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u0014\u0010c\u001a\u00020`8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\ba\u0010bR\u0016\u0010e\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010^R\u0014\u0010g\u001a\u00020\u00138\u0002X\u0082D¢\u0006\u0006\n\u0004\bf\u0010^R\u0014\u0010j\u001a\u00020h8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b^\u0010i¨\u0006n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;", "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;", "Lcom/onyx/galaxy/note/editor/view/adapter/ItemViewHolder;", "", "originList", "list", "p", "", "q", "holder", "item", "s", "binding", "r", "", CouchFieldKey.KEY_TOC_PAGE_ID, "", GoogleApiAvailabilityLight.f29016b, "", C4921e.f26528e, "onSelectedChanged", "fromPos", "toPos", "onItemMoved", "attach", "attachItemTouchHelper", "getItemTouchActionState", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;", "setBookmarkList", "pageDataModel", "pageIndex", "toggleBookmark", "newItems", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "onNext", "submitInObservable", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", "virtualPageList", "currentIndex", "setPageData", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "searchBeanList", "addPageSearchData", "scalePageDisplayRectF", FirebaseAnalytics.Param.INDEX, "setCurrentPageIndex", "resetCurrentPageIndex", "getCurrentPageIndex", "position", "onBindViewHolder", "t", "isItemSelected", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onViewRecycled", "", "payloads", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "positionList", "toggleItemsSelectedState", "pageIds", "selectStateByPageIds", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "A", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "B", Constants.HASIDCALL_INDEX_SIG, "getFullscreen", Constants.BOOLEAN_VALUE_SIG, "fullscreen", "Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;", "getThumbnailSizeType", "()Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;", "setThumbnailSizeType", "(Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;)V", "thumbnailSizeType", "", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Ljava/util/Map;", "bookmarkMap", "E", "I", "currentPageIndex", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "F", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "disposables", "G", "itemTouchActionState", "H", "dragDirs", "Landroidx/recyclerview/widget/ItemTouchHelper;", "Landroidx/recyclerview/widget/ItemTouchHelper;", "itemTouchHelper", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZLcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;)V", "a", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDocOverviewPageListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocOverviewPageListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,443:1\n1855#2,2:444\n1045#2:446\n1855#2,2:448\n350#2,7:450\n350#2,7:457\n766#2:464\n857#2,2:465\n1855#2,2:467\n766#2:469\n857#2,2:470\n1549#2:472\n1620#2,3:473\n1#3:447\n*S KotlinDebug\n*F\n+ 1 DocOverviewPageListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter\n*L\n173#1:444,2\n213#1:446\n233#1:448,2\n240#1:450,7\n242#1:457,7\n255#1:464\n255#1:465,2\n390#1:467,2\n406#1:469\n406#1:470,2\n407#1:472\n407#1:473,3\n*E\n"})
/* loaded from: classes9.dex */
public class DocOverviewPageListAdapter extends BaseSelectableDifferAdapter<PageDataModel, DataBindingHolder<ItemDocOverviewPageBinding>> {

    /* renamed from: A, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: B, reason: from kotlin metadata */
    public final boolean fullscreen;

    /* renamed from: C, reason: from kotlin metadata */
    @NotNull
    public ThumbnailSizeType thumbnailSizeType;

    /* renamed from: D, reason: from kotlin metadata */
    @NotNull
    public Map<String, VirtualBookmarkModel> bookmarkMap;

    /* renamed from: E, reason: from kotlin metadata */
    public int currentPageIndex;

    /* renamed from: F, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable disposables;

    /* renamed from: G, reason: from kotlin metadata */
    public int itemTouchActionState;

    /* renamed from: H, reason: from kotlin metadata */
    public final int dragDirs;

    /* renamed from: I, reason: from kotlin metadata */
    @NotNull
    public final ItemTouchHelper itemTouchHelper;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ThumbnailSizeType.values().length];
            try {
                iArr[ThumbnailSizeType.SMALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ThumbnailSizeType.LARGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.DocOverviewPageListAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C12263a extends DiffUtil.ItemCallback<PageDataModel> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(@NotNull PageDataModel oldItem, @NotNull PageDataModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            if (Intrinsics.areEqual(oldItem.getPageId(), newItem.getPageId()) && oldItem.getPageIndex() == newItem.getPageIndex() && Intrinsics.areEqual(oldItem.getPageDisplayRectF(), newItem.getPageDisplayRectF())) {
                NoteSearchBean noteSearchBean = oldItem.getNoteSearchBean();
                String cacheKey = noteSearchBean != null ? noteSearchBean.getCacheKey() : null;
                NoteSearchBean noteSearchBean2 = newItem.getNoteSearchBean();
                if (Intrinsics.areEqual(cacheKey, noteSearchBean2 != null ? noteSearchBean2.getCacheKey() : null) && StringUtils.equals(oldItem.getExtraCacheKey(), newItem.getExtraCacheKey())) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(@NotNull PageDataModel oldItem, @NotNull PageDataModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem.getPageId(), newItem.getPageId());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.DocOverviewPageListAdapter$b */
    /* loaded from: classes9.dex */
    public static final class C12264b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ int f59507f;

        public C12264b(int i) {
            this.f59507f = i;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<PageDataModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocOverviewPageListAdapter.this.setCurrentPageIndex(this.f59507f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.DocOverviewPageListAdapter$c */
    /* loaded from: classes9.dex */
    public static final class C12265c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<PageDataModel> f59509f;

        public C12265c(List<PageDataModel> list) {
            this.f59509f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<PageDataModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocOverviewPageListAdapter.this.m47558q(this.f59509f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.DocOverviewPageListAdapter$d */
    /* loaded from: classes9.dex */
    public static final class C12266d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Function0<Unit> f59510e;

        public C12266d(Function0<Unit> function0) {
            this.f59510e = function0;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<PageDataModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f59510e.invoke();
        }
    }

    public /* synthetic */ DocOverviewPageListAdapter(EditorBundle editorBundle, boolean z, ThumbnailSizeType thumbnailSizeType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, z, (i & 4) != 0 ? ThumbnailSizeType.SMALL : thumbnailSizeType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void submitInObservable$default(DocOverviewPageListAdapter docOverviewPageListAdapter, List list, Function0 function0, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: submitInObservable");
        }
        if ((i & 2) != 0) {
            function0 = new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocOverviewPageListAdapter$submitInObservable$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        docOverviewPageListAdapter.submitInObservable(list, function0);
    }

    public final void addPageSearchData(@NotNull List<NoteSearchBean> searchBeanList) {
        List sortedWith;
        Intrinsics.checkNotNullParameter(searchBeanList, "searchBeanList");
        List<PageDataModel> fromNoteSearchBeanList = PageDataModel.INSTANCE.fromNoteSearchBeanList(this.editorBundle, searchBeanList);
        scalePageDisplayRectF(fromNoteSearchBeanList);
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(m47557p(getItems(), fromNoteSearchBeanList), new Comparator() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocOverviewPageListAdapter$addPageSearchData$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((PageDataModel) t).getPageIndex()), Integer.valueOf(((PageDataModel) t2).getPageIndex()));
                return compareValues;
            }
        });
        submitInObservable$default(this, sortedWith, null, 2, null);
    }

    public final void attachItemTouchHelper(boolean attach) {
        if (attach) {
            this.itemTouchHelper.attachToRecyclerView(getRecyclerView());
        } else {
            this.itemTouchHelper.attachToRecyclerView(null);
        }
    }

    public final int getCurrentPageIndex() {
        return this.currentPageIndex;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    public final boolean getFullscreen() {
        return this.fullscreen;
    }

    public final int getItemTouchActionState() {
        return this.itemTouchActionState;
    }

    @NotNull
    public final ThumbnailSizeType getThumbnailSizeType() {
        return this.thumbnailSizeType;
    }

    /* renamed from: n */
    public final int m47555n(String pageId) {
        return m47556o(pageId) ? C10651R.drawable.ic_bookmark_selected : C10651R.drawable.ic_bookmark_unselect;
    }

    /* renamed from: o */
    public final boolean m47556o(String pageId) {
        return this.bookmarkMap.containsKey(pageId);
    }

    public void onItemMoved(int fromPos, int toPos) {
    }

    public void onSelectedChanged() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        ImageView imageView = (ImageView) holder.itemView.findViewById(C10651R.id.image);
        if (imageView != null) {
            Context context = imageView.getContext();
            AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
            boolean z = false;
            if (appCompatActivity != null && !appCompatActivity.isDestroyed()) {
                z = true;
            }
            if (z) {
                GlideApp.with(imageView.getContext()).clear(imageView);
            }
        }
        super.onViewRecycled(holder);
    }

    /* renamed from: p */
    public final List<PageDataModel> m47557p(List<PageDataModel> originList, List<PageDataModel> list) {
        List<PageDataModel> mutableList;
        Object obj;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) originList);
        for (PageDataModel pageDataModel : list) {
            Iterator<T> it2 = mutableList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (((PageDataModel) obj).getPageIndex() == pageDataModel.getPageIndex()) {
                    break;
                }
            }
            PageDataModel pageDataModel2 = (PageDataModel) obj;
            if (pageDataModel2 == null) {
                mutableList.add(pageDataModel);
            } else {
                PageDataModel.INSTANCE.merge(pageDataModel2, pageDataModel);
            }
        }
        return mutableList;
    }

    /* renamed from: q */
    public final void m47558q(List<PageDataModel> list) {
        HashSet hashSet;
        if (getSelectedItems().isEmpty()) {
            return;
        }
        hashSet = CollectionsKt___CollectionsKt.toHashSet(getSelectedItems());
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            final PageDataModel pageDataModel = (PageDataModel) obj;
            if (CollectionKt.contains(hashSet, new Function1<PageDataModel, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocOverviewPageListAdapter$resetSelectItems$newSelectItems$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull PageDataModel it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(Intrinsics.areEqual(it2.getPageId(), PageDataModel.this.getPageId()));
                }
            })) {
                arrayList.add(obj);
            }
        }
        getSelectedItems().clear();
        getSelectedItems().addAll(arrayList);
        notifyItemsChanged(getSelectedItems());
    }

    /* renamed from: r */
    public final void m47559r(ItemDocOverviewPageBinding binding) {
    }

    public final void resetCurrentPageIndex() {
        int i = this.currentPageIndex;
        this.currentPageIndex = -1;
        BaseQuickAdapterKt.notifyItemChangedSafety(this, i);
    }

    /* renamed from: s */
    public final void m47560s(DataBindingHolder<ItemDocOverviewPageBinding> holder, PageDataModel item) {
        float width;
        float height;
        int dimens;
        ThumbnailSizeType thumbnailSizeType = this.thumbnailSizeType;
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        int i = iArr[thumbnailSizeType.ordinal()];
        if (i == 1) {
            width = item.getPageDisplayRectF().width();
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            width = item.getPageDisplayRectF().width() * ResManager.INSTANCE.getInteger(C10651R.integer.twice);
        }
        int i2 = (int) width;
        int i3 = iArr[this.thumbnailSizeType.ordinal()];
        if (i3 == 1) {
            height = item.getPageDisplayRectF().height();
        } else {
            if (i3 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            height = item.getPageDisplayRectF().height() * ResManager.INSTANCE.getInteger(C10651R.integer.twice);
        }
        ImageView image = holder.getBinding().image;
        Intrinsics.checkNotNullExpressionValue(image, "image");
        ViewKt.setLayoutWidth(image, i2);
        ImageView image2 = holder.getBinding().image;
        Intrinsics.checkNotNullExpressionValue(image2, "image");
        ViewKt.setLayoutHeight(image2, Integer.valueOf((int) height));
        View root = holder.getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        ViewKt.setLayoutWidth(root, -1);
        if (RectKt.isLandscape(item.getPageDisplayRectF())) {
            LinearLayout imageContainer = holder.getBinding().imageContainer;
            Intrinsics.checkNotNullExpressionValue(imageContainer, "imageContainer");
            ViewKt.setLayoutHeight(imageContainer, -2);
            LinearLayout imageContainer2 = holder.getBinding().imageContainer;
            Intrinsics.checkNotNullExpressionValue(imageContainer2, "imageContainer");
            ViewKt.setLayoutWidth(imageContainer2, -2);
            return;
        }
        int i4 = iArr[this.thumbnailSizeType.ordinal()];
        if (i4 == 1) {
            dimens = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_142);
        } else {
            if (i4 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            dimens = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_264);
        }
        LinearLayout imageContainer3 = holder.getBinding().imageContainer;
        Intrinsics.checkNotNullExpressionValue(imageContainer3, "imageContainer");
        ViewKt.setLayoutHeight(imageContainer3, Integer.valueOf(dimens));
        LinearLayout imageContainer4 = holder.getBinding().imageContainer;
        Intrinsics.checkNotNullExpressionValue(imageContainer4, "imageContainer");
        ViewKt.setLayoutWidth(imageContainer4, dimens);
    }

    public final void scalePageDisplayRectF(@NotNull List<PageDataModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        ResManager resManager = ResManager.INSTANCE;
        float dimension = resManager.getDimension(C10651R.dimen.note_item_overview_width);
        float dimension2 = resManager.getDimension(C10651R.dimen.note_item_overview_width);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            RectFKt.scaleToPageByOrientation(((PageDataModel) it2.next()).getPageDisplayRectF(), dimension, dimension2);
        }
    }

    public final void selectStateByPageIds(@NotNull List<String> pageIds) {
        HashSet hashSet;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        if (pageIds.isEmpty()) {
            return;
        }
        hashSet = CollectionsKt___CollectionsKt.toHashSet(pageIds);
        List<PageDataModel> items = getItems();
        ArrayList arrayList = new ArrayList();
        for (Object obj : items) {
            if (hashSet.contains(((PageDataModel) obj).getPageId())) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Integer.valueOf(((PageDataModel) it2.next()).getPageIndex()));
        }
        toggleItemsSelectedState(arrayList2);
    }

    public final void setBookmarkList(@NotNull List<VirtualBookmarkModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        Map<? extends String, ? extends VirtualBookmarkModel> map = CollectionKt.toMap(list, new Function1<VirtualBookmarkModel, String>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocOverviewPageListAdapter$setBookmarkList$map$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull VirtualBookmarkModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getPageUniqueId();
            }
        });
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        CollectionKt.diff(this.bookmarkMap.keySet(), map.keySet(), linkedHashSet, linkedHashSet);
        this.bookmarkMap.clear();
        this.bookmarkMap.putAll(map);
        Iterator<T> it2 = CollectionKt.indexesOf(getItems(), new Function1<PageDataModel, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocOverviewPageListAdapter$setBookmarkList$indexes$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull PageDataModel it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return Boolean.valueOf(linkedHashSet.contains(it3.getPageId()));
            }
        }).iterator();
        while (it2.hasNext()) {
            notifyItemChanged(((Number) it2.next()).intValue());
        }
    }

    public final void setCurrentPageIndex(int index) {
        final int i;
        int i2 = this.currentPageIndex;
        Iterator<PageDataModel> it2 = getItems().iterator();
        int i3 = 0;
        while (true) {
            i = -1;
            if (!it2.hasNext()) {
                i3 = -1;
                break;
            } else {
                if (i2 == it2.next().getPageIndex()) {
                    break;
                } else {
                    i3++;
                }
            }
        }
        this.currentPageIndex = index;
        Iterator<PageDataModel> it3 = getItems().iterator();
        int i4 = 0;
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            if (this.currentPageIndex == it3.next().getPageIndex()) {
                i = i4;
                break;
            }
            i4++;
        }
        requireRecyclerViewSafety(new Function1<RecyclerView, Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocOverviewPageListAdapter$setCurrentPageIndex$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RecyclerView recyclerView) {
                invoke2(recyclerView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull RecyclerView it4) {
                Intrinsics.checkNotNullParameter(it4, "it");
                it4.scrollToPosition(i);
            }
        });
        notifyItemChanged(i3);
        notifyItemChanged(i);
    }

    public final void setPageData(@NotNull List<VirtualPageModel> virtualPageList, int currentIndex) {
        Intrinsics.checkNotNullParameter(virtualPageList, "virtualPageList");
        List<PageDataModel> fromVirtualPageList = PageDataModel.INSTANCE.fromVirtualPageList(this.editorBundle, virtualPageList);
        scalePageDisplayRectF(fromVirtualPageList);
        Disposable subscribe = BaseQuickAdapterKt.createSubmitListObservable(this, fromVirtualPageList).doOnNext(new C12264b(currentIndex)).doOnNext(new C12265c(fromVirtualPageList)).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.disposables.add(subscribe);
    }

    public final void setThumbnailSizeType(@NotNull ThumbnailSizeType thumbnailSizeType) {
        Intrinsics.checkNotNullParameter(thumbnailSizeType, "<set-?>");
        this.thumbnailSizeType = thumbnailSizeType;
    }

    public final void submitInObservable(@NotNull List<PageDataModel> newItems, @NotNull Function0<Unit> onNext) {
        Intrinsics.checkNotNullParameter(newItems, "newItems");
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        this.disposables.clear();
        Disposable subscribe = BaseQuickAdapterKt.createSubmitListObservable(this, newItems).doOnNext(new C12266d(onNext)).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.disposables.add(subscribe);
    }

    @NotNull
    public final VirtualBookmarkModel toggleBookmark(@NotNull PageDataModel pageDataModel, int pageIndex) {
        Intrinsics.checkNotNullParameter(pageDataModel, "pageDataModel");
        String pageId = pageDataModel.getPageId();
        VirtualBookmarkModel remove = this.bookmarkMap.remove(pageId);
        if (remove == null) {
            remove = new VirtualBookmarkModel(pageIndex);
            remove.setPageUniqueId(pageId);
            this.bookmarkMap.put(pageId, remove);
        }
        notifyItemChanged(getItems().indexOf(pageDataModel));
        return remove;
    }

    public final void toggleItemsSelectedState(@NotNull List<Integer> positionList) {
        List sorted;
        Object first;
        Object last;
        Object first2;
        Intrinsics.checkNotNullParameter(positionList, "positionList");
        if (positionList.isEmpty()) {
            return;
        }
        sorted = CollectionsKt___CollectionsKt.sorted(positionList);
        Iterator it2 = sorted.iterator();
        while (it2.hasNext()) {
            CollectionKt.toggle(getSelectedItems(), getItems().get(((Number) it2.next()).intValue()));
        }
        if (sorted.size() == 1) {
            first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) sorted);
            notifyItemChanged(((Number) first2).intValue(), BaseSwipeAbleDifferAdapter.PAY_LOAD_KEY_SWIPE);
        } else {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) sorted);
            int intValue = ((Number) first).intValue();
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) sorted);
            notifyItemRangeChanged(intValue, ((Number) last).intValue(), BaseSwipeAbleDifferAdapter.PAY_LOAD_KEY_SWIPE);
        }
    }

    @Override // com.onyx.galaxy.note.editor.view.adapter.BaseSelectableDifferAdapter
    public boolean isItemSelected(@NotNull final PageDataModel t) {
        Intrinsics.checkNotNullParameter(t, "t");
        return CollectionKt.contains(getSelectedItems(), new Function1<PageDataModel, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocOverviewPageListAdapter$isItemSelected$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull PageDataModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getPageId(), PageDataModel.this.getPageId()));
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, Object obj, List list) {
        onBindViewHolder((DataBindingHolder<ItemDocOverviewPageBinding>) viewHolder, i, (PageDataModel) obj, (List<? extends Object>) list);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemDocOverviewPageBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemDocOverviewPageBinding inflate = ItemDocOverviewPageBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DocOverviewPageListAdapter(@NotNull EditorBundle editorBundle, boolean z, @NotNull ThumbnailSizeType thumbnailSizeType) {
        super(new C12263a());
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(thumbnailSizeType, "thumbnailSizeType");
        this.editorBundle = editorBundle;
        this.fullscreen = z;
        this.thumbnailSizeType = thumbnailSizeType;
        this.bookmarkMap = new LinkedHashMap();
        this.disposables = new CompositeDisposable();
        final int i = 15;
        this.dragDirs = 15;
        this.itemTouchHelper = new ItemTouchHelper(new ItemTouchHelper.SimpleCallback(i) { // from class: com.onyx.galaxy.note.editor.view.adapter.DocOverviewPageListAdapter$itemTouchHelper$1

            /* renamed from: i, reason: from kotlin metadata */
            public int moveFromPos = -1;

            /* renamed from: j, reason: from kotlin metadata */
            public int moveToPos = -1;

            /* renamed from: k, reason: from kotlin metadata */
            public long lastMoveTime;

            public final int getMoveFromPos() {
                return this.moveFromPos;
            }

            public final int getMoveToPos() {
                return this.moveToPos;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public int interpolateOutOfBoundsScroll(@NotNull RecyclerView recyclerView, int viewSize, int viewSizeOutOfBounds, int totalSize, long msSinceStartScroll) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                int interpolateOutOfBoundsScroll = super.interpolateOutOfBoundsScroll(recyclerView, viewSize, viewSizeOutOfBounds, totalSize, msSinceStartScroll);
                if (interpolateOutOfBoundsScroll != 0) {
                    this.lastMoveTime = -1L;
                }
                return interpolateOutOfBoundsScroll;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean onMove(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, @NotNull RecyclerView.ViewHolder target) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
                Intrinsics.checkNotNullParameter(target, "target");
                int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
                int bindingAdapterPosition2 = target.getBindingAdapterPosition();
                PageDataModel item = DocOverviewPageListAdapter.this.getItem(bindingAdapterPosition);
                PageDataModel item2 = DocOverviewPageListAdapter.this.getItem(bindingAdapterPosition2);
                if (item == null || item2 == null || System.currentTimeMillis() - this.lastMoveTime <= ResManager.INSTANCE.getLong(C10651R.integer.drag_and_drop_move_interval_limit)) {
                    return false;
                }
                DocOverviewPageListAdapter.this.move(bindingAdapterPosition, bindingAdapterPosition2);
                this.lastMoveTime = System.currentTimeMillis();
                return true;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onMoved(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, int fromPos, @NotNull RecyclerView.ViewHolder target, int toPos, int x, int y) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
                Intrinsics.checkNotNullParameter(target, "target");
                super.onMoved(recyclerView, viewHolder, fromPos, target, toPos, x, y);
                if (this.moveFromPos == -1) {
                    this.moveFromPos = fromPos;
                }
                this.moveToPos = toPos;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSelectedChanged(@Nullable RecyclerView.ViewHolder viewHolder, int actionState) {
                int i2;
                int i3;
                super.onSelectedChanged(viewHolder, actionState);
                if (actionState == 0 && (i2 = this.moveFromPos) >= 0 && (i3 = this.moveToPos) >= 0) {
                    if (i2 != i3) {
                        DocOverviewPageListAdapter.this.onItemMoved(i2, i3);
                    }
                    this.moveFromPos = -1;
                    this.moveToPos = -1;
                }
                DocOverviewPageListAdapter.this.itemTouchActionState = actionState;
                DocOverviewPageListAdapter.this.onSelectedChanged();
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSwiped(@NotNull RecyclerView.ViewHolder viewHolder, int direction) {
                Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
            }

            public final void setMoveFromPos(int i2) {
                this.moveFromPos = i2;
            }

            public final void setMoveToPos(int i2) {
                this.moveToPos = i2;
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemDocOverviewPageBinding> holder, int position, @Nullable PageDataModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        boolean z = false;
        boolean z2 = this.currentPageIndex == item.getPageIndex() && !getSelectionMode();
        holder.getBinding().getRoot().setSelected(z2);
        holder.getBinding().card.showBorder(z2);
        holder.getBinding().title.setText(String.valueOf(item.getPageIndex() + 1));
        holder.getBinding().bookmark.setImageResource(m47555n(item.getPageId()));
        TintImageView tintImageView = holder.getBinding().moreSettings;
        if (!getSelectionMode() && item.getNoteSearchBean() == null) {
            z = true;
        }
        ViewKt.setViewVisibleOrGone(tintImageView, z);
        ViewKt.setViewVisibleOrGone(holder.getBinding().checkbox, getSelectionMode());
        holder.getBinding().checkbox.setChecked(isItemSelected(item));
        m47560s(holder, item);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) holder.getBinding().card.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.gravity = 80;
        }
        if (getIsScrollBarDragging()) {
            holder.getBinding().image.setImageResource(C10651R.drawable.icon_holder_logo);
            holder.getBinding().image.setScaleType(ImageView.ScaleType.CENTER_CROP);
        } else {
            holder.getBinding().image.setScaleType(ImageView.ScaleType.FIT_XY);
            if (item.getNoteSearchBean() != null) {
                GlideRequest<Drawable> override = GlideApp.with(holder.getBinding().image).load((Object) item.getNoteSearchBean()).diskCacheStrategy(DiskCacheStrategy.NONE).override(holder.getBinding().image.getWidth(), holder.getBinding().image.getHeight());
                NoteSearchBean.Companion companion = NoteSearchBean.INSTANCE;
                NoteSearchBean noteSearchBean = item.getNoteSearchBean();
                Intrinsics.checkNotNull(noteSearchBean);
                override.signature((Key) new ObjectKey(NoteSearchBean.Companion.toObjectCacheKey$default(companion, noteSearchBean, null, 1, null))).dontAnimate().into(holder.getBinding().image);
            } else {
                GlideApp.with(holder.getBinding().image).load((Object) item).diskCacheStrategy(DiskCacheStrategy.NONE).override(holder.getBinding().image.getWidth(), holder.getBinding().image.getHeight()).signature((Key) new ObjectKey(item.toObjectCacheKey())).dontAnimate().into(holder.getBinding().image);
            }
        }
        ItemDocOverviewPageBinding binding = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding, "getBinding(...)");
        m47559r(binding);
    }

    public void onBindViewHolder(@NotNull DataBindingHolder<ItemDocOverviewPageBinding> holder, int position, @Nullable PageDataModel item, @NotNull List<? extends Object> payloads) {
        Object first;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (item == null) {
            return;
        }
        first = CollectionsKt___CollectionsKt.first(payloads);
        if (Intrinsics.areEqual(first, BaseSwipeAbleDifferAdapter.PAY_LOAD_KEY_SWIPE)) {
            holder.getBinding().checkbox.setChecked(isItemSelected(item));
        } else {
            super.onBindViewHolder((DocOverviewPageListAdapter) holder, position, (int) item, payloads);
        }
    }
}
