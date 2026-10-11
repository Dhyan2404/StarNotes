package com.onyx.galaxy.note.settings.p047ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ItemFeedbackTypeLayoutBinding;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u000b¢\u0006\u0004\b\u001b\u0010\u001cJ(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0006R\"\u0010\u0019\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackTypeAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemFeedbackTypeLayoutBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "pos", "checkType", "r", "I", "getCheckPos", "()I", "setCheckPos", "(I)V", "checkPos", "resourceContext", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class FeedbackTypeAdapter extends BaseQuickAdapter<String, DataBindingHolder<ItemFeedbackTypeLayoutBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    public int checkPos;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedbackTypeAdapter(@NotNull Context resourceContext) {
        super(null, 1, null);
        List list;
        Intrinsics.checkNotNullParameter(resourceContext, "resourceContext");
        String[] stringArray = resourceContext.getResources().getStringArray(C10651R.array.feedback_type_array);
        Intrinsics.checkNotNullExpressionValue(stringArray, "getStringArray(...)");
        list = ArraysKt___ArraysKt.toList(stringArray);
        submitList(list);
    }

    public final void checkType(int pos) {
        int i = this.checkPos;
        if (pos == i) {
            return;
        }
        this.checkPos = pos;
        notifyItemChanged(i);
        notifyItemChanged(this.checkPos);
    }

    public final int getCheckPos() {
        return this.checkPos;
    }

    public final void setCheckPos(int i) {
        this.checkPos = i;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemFeedbackTypeLayoutBinding> holder, int position, @Nullable String item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.getBinding().tvType.setText(item);
        holder.getBinding().ivCheck.setSelected(position == this.checkPos);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemFeedbackTypeLayoutBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemFeedbackTypeLayoutBinding inflate = ItemFeedbackTypeLayoutBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
