package com.onyx.galaxy.note.category.view.adapter.template;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter4.BaseDifferAdapter;
import com.chad.library.adapter4.viewholder.QuickViewHolder;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0012B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J)\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\b\u0010\tJ \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0002H\u0014¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/template/CustomTemplateAddAdapter;", "Lcom/chad/library/adapter4/BaseDifferAdapter;", "", "Lcom/chad/library/adapter4/viewholder/QuickViewHolder;", "holder", "position", "item", "", "onBindViewHolder", "(Lcom/chad/library/adapter4/viewholder/QuickViewHolder;ILjava/lang/Integer;)V", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", Constants.CONSTRUCTOR_NAME, "()V", "a", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CustomTemplateAddAdapter extends BaseDifferAdapter<Integer, QuickViewHolder> {

    /* renamed from: com.onyx.galaxy.note.category.view.adapter.template.CustomTemplateAddAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C11421a extends DiffUtil.ItemCallback<Integer> {
        /* renamed from: a */
        public boolean m44237a(int i, int i2) {
            return i == i2;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public /* bridge */ /* synthetic */ boolean areContentsTheSame(Integer num, Integer num2) {
            return m44237a(num.intValue(), num2.intValue());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public /* bridge */ /* synthetic */ boolean areItemsTheSame(Integer num, Integer num2) {
            return m44238b(num.intValue(), num2.intValue());
        }

        /* renamed from: b */
        public boolean m44238b(int i, int i2) {
            return i == i2;
        }
    }

    public CustomTemplateAddAdapter() {
        super(new C11421a());
        add(1);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull QuickViewHolder holder, int position, @Nullable Integer item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public QuickViewHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new QuickViewHolder(C10651R.layout.item_custom_template_create_vertical, parent);
    }
}
