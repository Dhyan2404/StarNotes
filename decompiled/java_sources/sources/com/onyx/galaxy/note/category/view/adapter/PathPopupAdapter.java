package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.ColorUtils;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.C7594R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.PathEntry;
import com.onyx.galaxy.note.databinding.ItemPopupPathTitleBinding;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u001dB!\u0012\u0006\u0010\u0014\u001a\u00020\u0005\u0012\u0006\u0010\u0016\u001a\u00020\u0005\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u001b\u0010\u001cJ&\u0010\t\u001a\u00020\b2\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u000f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0002R\u0014\u0010\u0014\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/category/data/PathEntry;", "Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "level", "l", "r", "I", "iconRes", "s", "iconBottomRes", "", "t", Constants.STRING_SIG, "currId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(IILjava/lang/String;)V", "VH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PathPopupAdapter extends BaseQuickAdapter<PathEntry, C11394VH> {

    /* renamed from: r, reason: from kotlin metadata */
    public final int iconRes;

    /* renamed from: s, reason: from kotlin metadata */
    public final int iconBottomRes;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public final String currId;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;", "binding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.PathPopupAdapter$VH */
    /* loaded from: classes9.dex */
    public final class C11394VH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemPopupPathTitleBinding binding;

        /* renamed from: I */
        public final /* synthetic */ PathPopupAdapter f55267I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11394VH(@NotNull PathPopupAdapter pathPopupAdapter, ItemPopupPathTitleBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f55267I = pathPopupAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemPopupPathTitleBinding getBinding() {
            return this.binding;
        }
    }

    public PathPopupAdapter(int i, int i2, @Nullable String str) {
        super(null, 1, null);
        this.iconRes = i;
        this.iconBottomRes = i2;
        this.currId = str;
    }

    /* renamed from: l */
    public final int m44148l(int level) {
        return level * ((int) ResManager.INSTANCE.getDimension(C7384R.dimen.dp_12));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull C11394VH holder, int position, @Nullable PathEntry item) {
        int colorById;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNull(item);
        String id = item.getId();
        if (Intrinsics.areEqual(id, this.currId)) {
            colorById = ThemeUtils.getColorById(C7996R.color.theme_bg_primary_color_01);
        } else {
            colorById = ThemeUtils.getColorById(C10651R.color.transparent);
        }
        int integer = ResManager.INSTANCE.getInteger(C7594R.integer.tree_folder_icon_alpha);
        int color = item.getColor();
        if (color != 0) {
            color = ColorUtils.setAlphaComponent(color, integer);
        }
        ColorStateList valueOf = ColorStateList.valueOf(color);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(...)");
        ItemPopupPathTitleBinding binding = holder.getBinding();
        binding.ivIcon.setImageDrawable(ThemeUtils.getThemeDrawable(this.iconRes));
        binding.ivIconBottom.setImageResource(this.iconBottomRes);
        binding.ivIconBottom.setImageTintList(valueOf);
        binding.tvTitle.setText(item.getTitle());
        binding.tvTitle.setSelected(Intrinsics.areEqual(id, this.currId));
        binding.getRoot().setBackgroundColor(colorById);
        binding.clsContent.setPaddingRelative(m44148l(item.getLevel()), binding.clsContent.getPaddingTop(), binding.clsContent.getPaddingRight(), binding.clsContent.getPaddingBottom());
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public C11394VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemPopupPathTitleBinding inflate = ItemPopupPathTitleBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new C11394VH(this, inflate);
    }
}
