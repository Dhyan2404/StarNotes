package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeAttr;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.databinding.ItemUniversalShapeTypeBinding;
import com.onyx.galaxy.note.editor.data.UniversalShapeType;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0015\u0010\u0016J(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014R\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeTypeAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/editor/data/UniversalShapeType;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemUniversalShapeTypeBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;", "r", "Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;", "universalShapeAttr", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class UniversalShapeTypeAdapter extends BaseQuickAdapter<UniversalShapeType, DataBindingHolder<ItemUniversalShapeTypeBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public UniversalShapeAttr universalShapeAttr;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UniversalShapeTypeAdapter(@NotNull UniversalShapeAttr universalShapeAttr) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(universalShapeAttr, "universalShapeAttr");
        this.universalShapeAttr = universalShapeAttr;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemUniversalShapeTypeBinding> holder, int position, @Nullable UniversalShapeType item) {
        boolean equals$default;
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        holder.getBinding().setModel(item);
        TintFrameLayout tintFrameLayout = holder.getBinding().content;
        boolean z = false;
        if (!this.universalShapeAttr.getFavorited()) {
            equals$default = StringsKt__StringsJVMKt.equals$default(this.universalShapeAttr.getType(), item.getType(), false, 2, null);
            if (equals$default) {
                z = true;
            }
        }
        tintFrameLayout.setSelected(z);
        holder.getBinding().title.setImageResource(item.getIconResId());
        holder.getBinding().executePendingBindings();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemUniversalShapeTypeBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemUniversalShapeTypeBinding inflate = ItemUniversalShapeTypeBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
