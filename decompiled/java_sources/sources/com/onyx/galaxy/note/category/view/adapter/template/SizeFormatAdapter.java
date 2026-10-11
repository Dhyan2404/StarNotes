package com.onyx.galaxy.note.category.view.adapter.template;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseDifferAdapter;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.adapter.TemplateDiffCallback;
import com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0014\u0010\u0015J\"\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/template/SizeFormatAdapter;", "Lcom/chad/library/adapter4/BaseDifferAdapter;", "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", "Lcom/onyx/galaxy/note/category/view/adapter/template/SizeFormatAdapter$SizeFormatHolder;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "t", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "templateViewModel", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V", "SizeFormatHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SizeFormatAdapter extends BaseDifferAdapter<SizeFormat, SizeFormatHolder> {

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final NoteTemplateViewModel templateViewModel;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/template/SizeFormatAdapter$SizeFormatHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/widget/TextView;", "H", "Landroid/widget/TextView;", "getTitle", "()Landroid/widget/TextView;", "setTitle", "(Landroid/widget/TextView;)V", "title", "Landroid/view/View;", "itemView", Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class SizeFormatHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public TextView title;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SizeFormatHolder(@NotNull View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            View findViewById = itemView.findViewById(C10651R.id.tv_size_format_name);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
            this.title = (TextView) findViewById;
        }

        @NotNull
        public final TextView getTitle() {
            return this.title;
        }

        public final void setTitle(@NotNull TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.title = textView;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SizeFormatAdapter(@NotNull NoteTemplateViewModel templateViewModel) {
        super(new TemplateDiffCallback());
        Intrinsics.checkNotNullParameter(templateViewModel, "templateViewModel");
        this.templateViewModel = templateViewModel;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull SizeFormatHolder holder, int position, @Nullable SizeFormat item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.getTitle().setSelected(this.templateViewModel.getTemplateSize().getValue() == item);
        holder.getTitle().setText(item != null ? item.getSizeFormatName() : null);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public SizeFormatHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        View inflate = LayoutInflater.from(context).inflate(C10651R.layout.item_template_size_format, parent, false);
        Intrinsics.checkNotNull(inflate);
        return new SizeFormatHolder(inflate);
    }
}
