package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.glide.GlideExt;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModelExt;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ItemInkFontBinding;
import com.onyx.galaxy.note.editor.event.InkFontItemSelectedEvent;
import com.onyx.galaxy.note.editor.view.adapter.InkFontListAdapter;
import com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u000f\u0012\u0006\u0010\u0018\u001a\u00020\u0016¢\u0006\u0004\b!\u0010\"J&\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014J(\u0010\u0010\u001a\u00020\u000f2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\r\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0014J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0002H\u0002J\u0018\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0002H\u0002J\u0018\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0002H\u0002R\u0014\u0010\u0018\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemInkFontBinding;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", "binding", "model", GoogleApiAvailabilityLight.f29016b, "r", "q", "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;", "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;", "viewModel", "", "s", Constants.STRING_SIG, "getSelectingFontId", "()Ljava/lang/String;", "setSelectingFontId", "(Ljava/lang/String;)V", "selectingFontId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nInkFontListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkFontListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter\n+ 2 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,92:1\n19#2,3:93\n22#2,4:98\n1855#3,2:96\n*S KotlinDebug\n*F\n+ 1 InkFontListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter\n*L\n59#1:93,3\n59#1:98,4\n59#1:96,2\n*E\n"})
/* loaded from: classes9.dex */
public final class InkFontListAdapter extends BaseQuickAdapter<FontModel, DataBindingHolder<ItemInkFontBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final InkBeautifyViewModel viewModel;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public String selectingFontId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InkFontListAdapter(@NotNull InkBeautifyViewModel viewModel) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        this.viewModel = viewModel;
        this.selectingFontId = "";
    }

    /* renamed from: o */
    public static final void m47616o(final InkFontListAdapter this$0, FontModel model, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(model, "$model");
        final String str = this$0.selectingFontId;
        this$0.selectingFontId = model.getUniqueId();
        if (FontModelExt.INSTANCE.isDownloaded(model)) {
            this$0.viewModel.postEvent(new InkFontItemSelectedEvent(model));
            this$0.viewModel.selectFont(model);
            return;
        }
        this$0.viewModel.download(model);
        try {
            Iterator<T> it2 = CollectionKt.indexesOf(this$0.getItems(), new Function1<FontModel, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.adapter.InkFontListAdapter$addItemEvent$lambda$1$$inlined$notifyItemChangedSafely$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull FontModel it3) {
                    Intrinsics.checkNotNullParameter(it3, "it");
                    FontModel fontModel = it3;
                    return Boolean.valueOf(Intrinsics.areEqual(fontModel.getUniqueId(), InkFontListAdapter.this.getSelectingFontId()) || Intrinsics.areEqual(fontModel.getUniqueId(), str));
                }
            }).iterator();
            while (it2.hasNext()) {
                this$0.notifyItemChanged(((Number) it2.next()).intValue());
            }
        } catch (Throwable unused) {
            Debug.INSTANCE.m32037d("BaseQuickAdapter is detached");
        }
    }

    /* renamed from: p */
    public static final void m47617p(InkFontListAdapter this$0, FontModel model, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(model, "$model");
        this$0.viewModel.download(model);
    }

    @NotNull
    public final String getSelectingFontId() {
        return this.selectingFontId;
    }

    /* renamed from: n */
    public final void m47618n(ItemInkFontBinding binding, final FontModel model) {
        View root = binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        ViewKt.click$default(root, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.tki
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InkFontListAdapter.m47616o(InkFontListAdapter.this, model, view);
            }
        }, 1, null);
        TintImageView downloadButton = binding.downloadButton;
        Intrinsics.checkNotNullExpressionValue(downloadButton, "downloadButton");
        ViewKt.click$default(downloadButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.uki
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InkFontListAdapter.m47617p(InkFontListAdapter.this, model, view);
            }
        }, 1, null);
    }

    /* renamed from: q */
    public final void m47619q(ItemInkFontBinding binding, FontModel model) {
        Object first;
        Object last;
        int i;
        if (getItems().isEmpty()) {
            return;
        }
        if (getItems().size() == 1) {
            i = C10651R.drawable.ripple_white_corner;
        } else {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) getItems());
            if (Intrinsics.areEqual(model, first)) {
                i = C10651R.drawable.ripple_white_top_corner;
            } else {
                last = CollectionsKt___CollectionsKt.last((List<? extends Object>) getItems());
                i = Intrinsics.areEqual(model, last) ? C10651R.drawable.ripple_white_bottom_corner : C10651R.drawable.ripple_white;
            }
        }
        binding.getRoot().setBackground(ThemeUtils.getThemeDrawable(i));
    }

    /* renamed from: r */
    public final void m47620r(ItemInkFontBinding binding, FontModel model) {
        Object last;
        boolean areEqual = Intrinsics.areEqual(model.getUniqueId(), this.selectingFontId);
        FontModelExt fontModelExt = FontModelExt.INSTANCE;
        boolean isDownloaded = fontModelExt.isDownloaded(model);
        boolean isDownloading = fontModelExt.isDownloading(model);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) getItems());
        boolean z = false;
        boolean z2 = model == last;
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(binding.selectedIcon, areEqual && isDownloaded);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(binding.loadingIcon, isDownloading);
        TintImageView tintImageView = binding.downloadButton;
        if (!isDownloading && !isDownloaded) {
            z = true;
        }
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(tintImageView, z);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(binding.bottomDivider, !z2);
        m47619q(binding, model);
    }

    public final void setSelectingFontId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.selectingFontId = str;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemInkFontBinding> holder, int position, @Nullable FontModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        GlideExt glideExt = GlideExt.INSTANCE;
        TintImageView fontTitleThumbnail = holder.getBinding().fontTitleThumbnail;
        Intrinsics.checkNotNullExpressionValue(fontTitleThumbnail, "fontTitleThumbnail");
        GlideExt.loadOrFallback$default(glideExt, fontTitleThumbnail, FontModelExt.INSTANCE.getCachedInkTitleThumbnailFile(item), item.getInkTitleThumbnail(), null, 4, null);
        ItemInkFontBinding binding = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding, "getBinding(...)");
        m47618n(binding, item);
        ItemInkFontBinding binding2 = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding2, "getBinding(...)");
        m47620r(binding2, item);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemInkFontBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemInkFontBinding inflate = ItemInkFontBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
