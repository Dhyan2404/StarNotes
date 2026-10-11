package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.replicator.note.p035db.model.HwrResourceModel;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ItemHwrResourceBinding;
import com.onyx.galaxy.note.editor.view.adapter.HwrResourceListAdapter;
import com.onyx.galaxy.note.editor.viewmodel.SelectionHwrViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u000f\u0012\u0006\u0010\u0018\u001a\u00020\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ&\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014J(\u0010\u0010\u001a\u00020\u000f2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\r\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0014J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0002H\u0002J\u0018\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0002H\u0002J\u0018\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0002H\u0002R\u0014\u0010\u0018\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", "binding", "model", GoogleApiAvailabilityLight.f29016b, "r", "q", "Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;", "Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;", "viewModel", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class HwrResourceListAdapter extends BaseQuickAdapter<HwrResourceModel, DataBindingHolder<ItemHwrResourceBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final SelectionHwrViewModel viewModel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HwrResourceListAdapter(@NotNull SelectionHwrViewModel viewModel) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        this.viewModel = viewModel;
    }

    /* renamed from: o */
    public static final void m47607o(HwrResourceListAdapter this$0, HwrResourceModel model, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(model, "$model");
        this$0.viewModel.download(model);
    }

    /* renamed from: p */
    public static final void m47608p(HwrResourceListAdapter this$0, HwrResourceModel model, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(model, "$model");
        if (this$0.viewModel.isResourceDownloaded(model)) {
            this$0.viewModel.selectLang(model.getLang());
        } else {
            this$0.viewModel.setSelectingLang(model.getLang());
            this$0.viewModel.download(model);
        }
    }

    /* renamed from: n */
    public final void m47609n(ItemHwrResourceBinding binding, final HwrResourceModel model) {
        TintImageView downloadIcon = binding.downloadIcon;
        Intrinsics.checkNotNullExpressionValue(downloadIcon, "downloadIcon");
        ViewKt.click$default(downloadIcon, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.obi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HwrResourceListAdapter.m47607o(HwrResourceListAdapter.this, model, view);
            }
        }, 1, null);
        View root = binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        ViewKt.click$default(root, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.pbi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HwrResourceListAdapter.m47608p(HwrResourceListAdapter.this, model, view);
            }
        }, 1, null);
    }

    /* renamed from: q */
    public final void m47610q(ItemHwrResourceBinding binding, HwrResourceModel model) {
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
    public final void m47611r(ItemHwrResourceBinding binding, HwrResourceModel model) {
        boolean areEqual = Intrinsics.areEqual(model.getLang(), this.viewModel.getSelectedLang());
        boolean isResourceDownloaded = this.viewModel.isResourceDownloaded(model);
        boolean isResourceDownloading = this.viewModel.isResourceDownloading(model);
        binding.langText.setText(model.getName());
        binding.langText.setSelected(areEqual && isResourceDownloaded);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(binding.selectedIcon, areEqual && isResourceDownloaded);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(binding.loadingIcon, !isResourceDownloaded && isResourceDownloading);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(binding.downloadIcon, (isResourceDownloaded || isResourceDownloading) ? false : true);
        m47610q(binding, model);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemHwrResourceBinding> holder, int position, @Nullable HwrResourceModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        ItemHwrResourceBinding binding = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding, "getBinding(...)");
        m47609n(binding, item);
        ItemHwrResourceBinding binding2 = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding2, "getBinding(...)");
        m47611r(binding2, item);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemHwrResourceBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemHwrResourceBinding inflate = ItemHwrResourceBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
