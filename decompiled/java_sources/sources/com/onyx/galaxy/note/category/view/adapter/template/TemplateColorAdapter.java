package com.onyx.galaxy.note.category.view.adapter.template;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseDifferAdapter;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.adapter.TemplateDiffCallback;
import com.onyx.galaxy.note.category.view.adapter.template.TemplateColorAdapter;
import com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel;
import com.onyx.galaxy.note.editor.view.toolbar.ColorView;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001%B\u0011\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b$\u0010\u001eJ\u001a\u0010\u0007\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0004J%\u0010\u000b\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\fJ)\u0010\u0010\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0010\u0010\u0011J \u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0002H\u0014R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0016\u0010\n\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R$\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;", "Lcom/chad/library/adapter4/BaseDifferAdapter;", "", "Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;", "Lkotlin/Function1;", "", "callback", "setColorChangeCallback", "", "list", "selectColor", "setColorData", "(Ljava/util/List;Ljava/lang/Integer;)V", "holder", "position", "item", "onBindViewHolder", "(Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;ILjava/lang/Integer;)V", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "t", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "getTemplateViewModel", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "setTemplateViewModel", "(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V", "templateViewModel", "u", "I", "v", "Lkotlin/jvm/functions/Function1;", Constants.CONSTRUCTOR_NAME, "ColorHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TemplateColorAdapter extends BaseDifferAdapter<Integer, ColorHolder> {

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public NoteTemplateViewModel templateViewModel;

    /* renamed from: u, reason: from kotlin metadata */
    public int selectColor;

    /* renamed from: v, reason: from kotlin metadata */
    @Nullable
    public Function1<? super Integer, Unit> callback;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;", "H", "Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;", "getColorView", "()Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;", "setColorView", "(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;)V", "colorView", "Landroid/view/View;", "itemView", Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class ColorHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public ColorView colorView;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ColorHolder(@NotNull View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            View findViewById = itemView.findViewById(C10651R.id.color_view);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
            this.colorView = (ColorView) findViewById;
        }

        @NotNull
        public final ColorView getColorView() {
            return this.colorView;
        }

        public final void setColorView(@NotNull ColorView colorView) {
            Intrinsics.checkNotNullParameter(colorView, "<set-?>");
            this.colorView = colorView;
        }
    }

    public TemplateColorAdapter(@Nullable NoteTemplateViewModel noteTemplateViewModel) {
        super(new TemplateDiffCallback());
        this.templateViewModel = noteTemplateViewModel;
        this.selectColor = -1;
    }

    /* renamed from: o */
    public static final void m44257o(TemplateColorAdapter this$0, ColorHolder holder, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(holder, "$holder");
        this$0.selectColor = holder.getColorView().getColor();
        this$0.notifyDataSetChanged();
        Function1<? super Integer, Unit> function1 = this$0.callback;
        if (function1 != null) {
            function1.invoke(Integer.valueOf(this$0.selectColor));
        }
    }

    @Nullable
    public final NoteTemplateViewModel getTemplateViewModel() {
        return this.templateViewModel;
    }

    public final void setColorChangeCallback(@NotNull Function1<? super Integer, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    public final void setColorData(@NotNull List<Integer> list, @Nullable Integer selectColor) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (selectColor != null) {
            this.selectColor = selectColor.intValue();
        }
        submitList(list);
        notifyDataSetChanged();
    }

    public final void setTemplateViewModel(@Nullable NoteTemplateViewModel noteTemplateViewModel) {
        this.templateViewModel = noteTemplateViewModel;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull final ColorHolder holder, int position, @Nullable Integer item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item != null) {
            int intValue = item.intValue();
            holder.getColorView().setColor(intValue);
            holder.getColorView().setSelect(this.selectColor == intValue);
        }
        holder.getColorView().setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.uan
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TemplateColorAdapter.m44257o(TemplateColorAdapter.this, holder, view);
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public ColorHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        View inflate = LayoutInflater.from(context).inflate(C10651R.layout.item_template_color, parent, false);
        Intrinsics.checkNotNull(inflate);
        return new ColorHolder(inflate);
    }
}
