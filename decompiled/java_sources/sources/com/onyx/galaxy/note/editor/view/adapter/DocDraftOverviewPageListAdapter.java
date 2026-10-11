package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.DiffUtil;
import com.blankj.utilcode.util.StringUtils;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.PageDataModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.common.glide.GlideApp;
import com.onyx.galaxy.note.databinding.ItemDocDraftOverviewPageBinding;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u00002\u0018\u0012\u0004\u0012\u00020\u0002\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00050\u0001:\u0001:B\u0017\u0012\u0006\u0010+\u001a\u00020&\u0012\u0006\u00101\u001a\u00020,¢\u0006\u0004\b8\u00109J(\u0010\f\u001a\u00020\t2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0012\b\u0002\u0010\u000b\u001a\f\u0012\u0004\u0012\u00020\t0\bj\u0002`\nJ\u001c\u0010\u0011\u001a\u00020\t2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00062\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u000fJ\u0006\u0010\u0014\u001a\u00020\tJ\u0006\u0010\u0015\u001a\u00020\u000fJ,\u0010\u0019\u001a\u00020\t2\u0010\u0010\u0016\u001a\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00052\u0006\u0010\u0017\u001a\u00020\u000f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u0014J*\u0010\u001f\u001a\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00052\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u000fH\u0014J*\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006H\u0002J\u0016\u0010#\u001a\u00020\t2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006H\u0002J\u0010\u0010%\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u0004H\u0002R\u0017\u0010+\u001a\u00020&8\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0017\u00101\u001a\u00020,8\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00107\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106¨\u0006;"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;", "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemDocDraftOverviewPageBinding;", "Lcom/onyx/galaxy/note/editor/view/adapter/DraftItemViewHolder;", "", "newItems", "Lkotlin/Function0;", "", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "onNext", "submitInObservable", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "searchBeanList", "", "currentIndex", "addPageSearchData", FirebaseAnalytics.Param.INDEX, "setCurrentIndex", "resetCurrentIndex", "getCurrentIndex", "holder", "position", "item", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "originList", "list", GoogleApiAvailabilityLight.f29016b, "scalePageDisplayRectF", "binding", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "A", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "B", Constants.HASIDCALL_INDEX_SIG, "getFullscreen", Constants.BOOLEAN_VALUE_SIG, "fullscreen", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "I", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "disposables", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V", "a", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDocDraftOverviewPageListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocDraftOverviewPageListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n1#2:188\n1855#3,2:189\n350#3,7:191\n350#3,7:198\n*S KotlinDebug\n*F\n+ 1 DocDraftOverviewPageListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter\n*L\n82#1:189,2\n94#1:191,7\n96#1:198,7\n*E\n"})
/* loaded from: classes9.dex */
public class DocDraftOverviewPageListAdapter extends BaseSelectableDifferAdapter<PageDataModel, DataBindingHolder<ItemDocDraftOverviewPageBinding>> {

    /* renamed from: A, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: B, reason: from kotlin metadata */
    public final boolean fullscreen;

    /* renamed from: C, reason: from kotlin metadata */
    public int currentIndex;

    /* renamed from: D, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable disposables;

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.DocDraftOverviewPageListAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C12259a extends DiffUtil.ItemCallback<PageDataModel> {
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

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.DocDraftOverviewPageListAdapter$b */
    /* loaded from: classes9.dex */
    public static final class C12261b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Function0<Unit> f59473e;

        public C12261b(Function0<Unit> function0) {
            this.f59473e = function0;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<PageDataModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f59473e.invoke();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DocDraftOverviewPageListAdapter(@NotNull EditorBundle editorBundle, boolean z) {
        super(new C12259a());
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.fullscreen = z;
        this.disposables = new CompositeDisposable();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void submitInObservable$default(DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter, List list, Function0 function0, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: submitInObservable");
        }
        if ((i & 2) != 0) {
            function0 = new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocDraftOverviewPageListAdapter$submitInObservable$1
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
        docDraftOverviewPageListAdapter.submitInObservable(list, function0);
    }

    public final void addPageSearchData(@NotNull List<NoteSearchBean> searchBeanList, final int currentIndex) {
        Intrinsics.checkNotNullParameter(searchBeanList, "searchBeanList");
        final List<PageDataModel> fromNoteSearchBeanList = PageDataModel.INSTANCE.fromNoteSearchBeanList(this.editorBundle, searchBeanList);
        scalePageDisplayRectF(fromNoteSearchBeanList);
        submitInObservable(m47518n(getItems(), fromNoteSearchBeanList), new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocDraftOverviewPageListAdapter$addPageSearchData$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                List<PageDataModel> list = fromNoteSearchBeanList;
                final int i = currentIndex;
                if (CollectionKt.contains(list, new Function1<PageDataModel, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocDraftOverviewPageListAdapter$addPageSearchData$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull PageDataModel it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(it2.getPageIndex() == i);
                    }
                })) {
                    this.setCurrentIndex(currentIndex);
                }
            }
        });
    }

    public final int getCurrentIndex() {
        return this.currentIndex;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    public final boolean getFullscreen() {
        return this.fullscreen;
    }

    /* renamed from: n */
    public final List<PageDataModel> m47518n(List<PageDataModel> originList, List<PageDataModel> list) {
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

    /* renamed from: o */
    public final void m47519o(ItemDocDraftOverviewPageBinding binding) {
        if (this.fullscreen) {
            ResManager resManager = ResManager.INSTANCE;
            int dimens = resManager.getDimens(C10651R.dimen.overview_item_width_fullscreen);
            int dimens2 = resManager.getDimens(C10651R.dimen.overview_item_height_fullscreen);
            View root = binding.getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
            ViewKt.setLayoutParams(root, dimens, dimens2);
        }
    }

    public final void resetCurrentIndex() {
        int i = this.currentIndex;
        this.currentIndex = -1;
        BaseQuickAdapterKt.notifyItemChangedSafety(this, i);
    }

    public final void scalePageDisplayRectF(List<PageDataModel> list) {
        for (PageDataModel pageDataModel : list) {
            ResManager resManager = ResManager.INSTANCE;
            RectFKt.scaleToPageByOrientation(pageDataModel.getPageDisplayRectF(), resManager.getDimension(C10651R.dimen.note_item_overview_width), resManager.getDimension(C10651R.dimen.note_item_overview_width));
        }
    }

    public final void setCurrentIndex(int index) {
        int i;
        int i2 = this.currentIndex;
        if (index == i2) {
            return;
        }
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
        this.currentIndex = index;
        Iterator<PageDataModel> it3 = getItems().iterator();
        int i4 = 0;
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            if (this.currentIndex == it3.next().getPageIndex()) {
                i = i4;
                break;
            }
            i4++;
        }
        getRecyclerView().scrollToPosition(i);
        notifyItemChanged(i3);
        notifyItemChanged(i);
    }

    public final void submitInObservable(@NotNull List<PageDataModel> newItems, @NotNull Function0<Unit> onNext) {
        Intrinsics.checkNotNullParameter(newItems, "newItems");
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        this.disposables.clear();
        Disposable subscribe = BaseQuickAdapterKt.createSubmitListObservable(this, newItems).doOnNext(new C12261b(onNext)).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.disposables.add(subscribe);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemDocDraftOverviewPageBinding> holder, int position, @Nullable PageDataModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        boolean z = this.currentIndex == item.getPageIndex() && !getSelectionMode();
        holder.getBinding().getRoot().setSelected(z);
        holder.getBinding().card.showBorder(z);
        TintTextView tintTextView = holder.getBinding().title;
        ResManager resManager = ResManager.INSTANCE;
        tintTextView.setText(resManager.getString(C10651R.string.boundless_note_paper));
        ViewKt.setViewVisibleOrGone(holder.getBinding().checkbox, getSelectionMode());
        holder.getBinding().checkbox.setChecked(isItemSelected(item));
        ImageView image = holder.getBinding().image;
        Intrinsics.checkNotNullExpressionValue(image, "image");
        ViewKt.setLayoutWidth(image, (int) item.getPageDisplayRectF().width());
        ImageView image2 = holder.getBinding().image;
        Intrinsics.checkNotNullExpressionValue(image2, "image");
        ViewKt.setLayoutHeight(image2, Integer.valueOf((int) item.getPageDisplayRectF().height()));
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) holder.getBinding().card.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.gravity = 80;
        }
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
        } else {
            LinearLayout imageContainer3 = holder.getBinding().imageContainer;
            Intrinsics.checkNotNullExpressionValue(imageContainer3, "imageContainer");
            ViewKt.setLayoutHeight(imageContainer3, Integer.valueOf(resManager.getDimens(C7384R.dimen.dp_146)));
            LinearLayout imageContainer4 = holder.getBinding().imageContainer;
            Intrinsics.checkNotNullExpressionValue(imageContainer4, "imageContainer");
            ViewKt.setLayoutWidth(imageContainer4, resManager.getDimens(C7384R.dimen.dp_146));
        }
        if (item.getNoteSearchBean() != null) {
            GlideApp.with(holder.getBinding().image).load((Object) item.getNoteSearchBean()).diskCacheStrategy(DiskCacheStrategy.NONE).into(holder.getBinding().image);
        } else {
            GlideApp.with(holder.getBinding().image).load((Object) item).diskCacheStrategy(DiskCacheStrategy.NONE).into(holder.getBinding().image);
        }
        ItemDocDraftOverviewPageBinding binding = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding, "getBinding(...)");
        m47519o(binding);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemDocDraftOverviewPageBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemDocDraftOverviewPageBinding inflate = ItemDocDraftOverviewPageBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
