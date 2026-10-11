package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseDifferAdapter;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.adapter.TemplateDiffCallback;
import com.onyx.galaxy.note.editor.view.adapter.PageMarginColorAdapter;
import com.onyx.galaxy.note.editor.view.toolbar.ColorView;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u0000 #2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002$#B\u0007¢\u0006\u0004\b!\u0010\"J\u001a\u0010\u0007\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0004J&\u0010\r\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bJ)\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J \u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0002H\u0014R$\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006%"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;", "Lcom/chad/library/adapter4/BaseDifferAdapter;", "", "Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;", "Lkotlin/Function1;", "", "callback", "setColorChangeCallback", "", "list", "selectedPosition", "Ljava/lang/Runnable;", "commitCallback", "setColorData", "holder", "position", "item", "onBindViewHolder", "(Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;ILjava/lang/Integer;)V", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "t", "Lkotlin/jvm/functions/Function1;", "u", "I", "getSelectedPosition", "()I", "setSelectedPosition", "(I)V", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "ColorHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PageMarginColorAdapter extends BaseDifferAdapter<Integer, ColorHolder> {
    public static final int DATA_SELECT_COLOR = Integer.MAX_VALUE;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public Function1<? super Integer, Unit> callback;

    /* renamed from: u, reason: from kotlin metadata */
    public int selectedPosition;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;", "H", "Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;", "getColorView", "()Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;", "setColorView", "(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;)V", "colorView", "Landroid/view/View;", "itemView", Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
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

    public PageMarginColorAdapter() {
        super(new TemplateDiffCallback());
        this.selectedPosition = -1;
    }

    /* renamed from: o */
    public static final void m47650o(PageMarginColorAdapter this$0, int i, ColorHolder holder, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(holder, "$holder");
        this$0.selectedPosition = i;
        this$0.notifyDataSetChanged();
        Function1<? super Integer, Unit> function1 = this$0.callback;
        if (function1 != null) {
            function1.invoke(Integer.valueOf(holder.getColorView().getColor()));
        }
    }

    public static /* synthetic */ void setColorData$default(PageMarginColorAdapter pageMarginColorAdapter, List list, int i, Runnable runnable, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        pageMarginColorAdapter.setColorData(list, i, runnable);
    }

    public final int getSelectedPosition() {
        return this.selectedPosition;
    }

    public final void setColorChangeCallback(@NotNull Function1<? super Integer, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    public final void setColorData(@NotNull List<Integer> list, int selectedPosition, @NotNull Runnable commitCallback) {
        List mutableList;
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(commitCallback, "commitCallback");
        this.selectedPosition = selectedPosition;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
        mutableList.add(Integer.MAX_VALUE);
        submitList(mutableList, commitCallback);
    }

    public final void setSelectedPosition(int i) {
        this.selectedPosition = i;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull final ColorHolder holder, final int position, @Nullable Integer item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item != null) {
            item.intValue();
            if (item.intValue() == Integer.MAX_VALUE) {
                holder.getColorView().setFillDrawableRes(C10651R.drawable.icon_page_margin_color_select);
            } else {
                holder.getColorView().setFillDrawableRes(0);
            }
            holder.getColorView().setColor(item.intValue());
            holder.getColorView().setSelect(this.selectedPosition == position);
            holder.getColorView().setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xsk
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PageMarginColorAdapter.m47650o(PageMarginColorAdapter.this, position, holder, view);
                }
            });
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public ColorHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        View inflate = LayoutInflater.from(context).inflate(C10651R.layout.item_page_margin_color, parent, false);
        Intrinsics.checkNotNull(inflate);
        return new ColorHolder(inflate);
    }
}
