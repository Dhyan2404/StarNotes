package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ItemUniversalShapeViewPagerBinding;
import com.onyx.galaxy.note.editor.data.UniversalShapeType;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u0016\u0017B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J \u0010\n\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014J\"\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0014J\u0018\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0002H\u0002¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$UniversalShapePageData;", "Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$VH;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", "Lcom/onyx/galaxy/note/databinding/ItemUniversalShapeViewPagerBinding;", "binding", "pageData", "l", Constants.CONSTRUCTOR_NAME, "()V", "UniversalShapePageData", "VH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class UniversalShapeViewPagerAdapter extends BaseQuickAdapter<UniversalShapePageData, C12290VH> {

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$UniversalShapePageData;", "", "Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeTypeAdapter;", "a", "Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeTypeAdapter;", "getSecondaryAdapter", "()Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeTypeAdapter;", "secondaryAdapter", "", "Lcom/onyx/galaxy/note/editor/data/UniversalShapeType;", "b", "Ljava/util/List;", "getUniversalShapeTypeList", "()Ljava/util/List;", "universalShapeTypeList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeTypeAdapter;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class UniversalShapePageData {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final UniversalShapeTypeAdapter secondaryAdapter;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final List<UniversalShapeType> universalShapeTypeList;

        /* JADX WARN: Multi-variable type inference failed */
        public UniversalShapePageData(@NotNull UniversalShapeTypeAdapter secondaryAdapter, @NotNull List<? extends UniversalShapeType> universalShapeTypeList) {
            Intrinsics.checkNotNullParameter(secondaryAdapter, "secondaryAdapter");
            Intrinsics.checkNotNullParameter(universalShapeTypeList, "universalShapeTypeList");
            this.secondaryAdapter = secondaryAdapter;
            this.universalShapeTypeList = universalShapeTypeList;
        }

        @NotNull
        public final UniversalShapeTypeAdapter getSecondaryAdapter() {
            return this.secondaryAdapter;
        }

        @NotNull
        public final List<UniversalShapeType> getUniversalShapeTypeList() {
            return this.universalShapeTypeList;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$VH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemUniversalShapeViewPagerBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemUniversalShapeViewPagerBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemUniversalShapeViewPagerBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemUniversalShapeViewPagerBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.UniversalShapeViewPagerAdapter$VH */
    /* loaded from: classes9.dex */
    public static final class C12290VH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemUniversalShapeViewPagerBinding binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12290VH(@NotNull ItemUniversalShapeViewPagerBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.binding = binding;
        }

        @NotNull
        public final ItemUniversalShapeViewPagerBinding getBinding() {
            return this.binding;
        }
    }

    public UniversalShapeViewPagerAdapter() {
        super(null, 1, null);
    }

    /* renamed from: l */
    public final void m47721l(ItemUniversalShapeViewPagerBinding binding, UniversalShapePageData pageData) {
        ResManager resManager = ResManager.INSTANCE;
        int dimens = resManager.getDimens(C7384R.dimen.dp_12);
        binding.recyclerView.setLayoutManager(new GridLayoutManager(getContext(), resManager.getInteger(C10651R.integer.universal_popup_type_column_count), 1, false));
        binding.recyclerView.setAdapter(pageData.getSecondaryAdapter());
        binding.recyclerView.addItemDecoration(new FixedSpacingItemDecoration(dimens, dimens));
        pageData.getSecondaryAdapter().submitList(pageData.getUniversalShapeTypeList());
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull C12290VH holder, int position, @Nullable UniversalShapePageData item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        m47721l(holder.getBinding(), item);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public C12290VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemUniversalShapeViewPagerBinding inflate = ItemUniversalShapeViewPagerBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new C12290VH(inflate);
    }
}
