package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.SkinBean;
import com.onyx.android.sdk.theme.utils.SkinType;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.galaxy.note.databinding.ItemThemeBinding;
import com.onyx.galaxy.note.databinding.ItemThemeHeaderBinding;
import com.onyx.galaxy.note.editor.view.adapter.ThemeAdapter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0015\u0018\u0000 -2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0003-./B\u0007¢\u0006\u0004\b+\u0010,J\u001a\u0010\u0007\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0004J\u001e\u0010\f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\nH\u0014J\"\u0010\u000f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\bH\u0014J\u0010\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0016H\u0016R$\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R*\u0010*\u001a\u00020\b2\u0006\u0010#\u001a\u00020\b8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u00060"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/theme/SkinBean;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lkotlin/Function1;", "", "callback", "setCallback", "", "position", "", "list", "getItemViewType", "holder", "item", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "onAttachedToRecyclerView", "r", "Lkotlin/jvm/functions/Function1;", "", "s", Constants.HASIDCALL_INDEX_SIG, "getHasPayment", Constants.BOOLEAN_VALUE_SIG, "setHasPayment", "(Z)V", "hasPayment", "value", "t", "I", "getSelectTheme", "()I", "setSelectTheme", "(I)V", "selectTheme", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "ThemeItemHeaderHolder", "ThemeItemHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nThemeAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,105:1\n256#2,2:106\n256#2,2:108\n256#2,2:110\n*S KotlinDebug\n*F\n+ 1 ThemeAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter\n*L\n58#1:106,2\n59#1:108,2\n65#1:110,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ThemeAdapter extends BaseQuickAdapter<SkinBean, RecyclerView.ViewHolder> {
    public static final int ITEM_TYPE_CONTENT = 1;
    public static final int ITEM_TYPE_HEADER = 0;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public Function1<? super SkinBean, Unit> callback;

    /* renamed from: s, reason: from kotlin metadata */
    public boolean hasPayment;

    /* renamed from: t, reason: from kotlin metadata */
    public int selectTheme;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter$ThemeItemHeaderHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemThemeHeaderBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemThemeHeaderBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemThemeHeaderBinding;", "binding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemThemeHeaderBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class ThemeItemHeaderHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemThemeHeaderBinding binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ThemeItemHeaderHolder(@NotNull ItemThemeHeaderBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.binding = binding;
        }

        @NotNull
        public final ItemThemeHeaderBinding getBinding() {
            return this.binding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter$ThemeItemHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemThemeBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemThemeBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemThemeBinding;", "binding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemThemeBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class ThemeItemHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemThemeBinding binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ThemeItemHolder(@NotNull ItemThemeBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.binding = binding;
        }

        @NotNull
        public final ItemThemeBinding getBinding() {
            return this.binding;
        }
    }

    public ThemeAdapter() {
        super(null, 1, null);
        this.selectTheme = SkinType.DEFAULT.getThemeType();
    }

    /* renamed from: m */
    public static final void m47714m(ThemeAdapter this$0, SkinBean skinBean, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function1<? super SkinBean, Unit> function1 = this$0.callback;
        if (function1 != null) {
            function1.invoke(skinBean);
        }
    }

    public final boolean getHasPayment() {
        return this.hasPayment;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public int getItemViewType(int position, @NotNull List<? extends SkinBean> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return list.get(position).getThemeType() == -1 ? 0 : 1;
    }

    public final int getSelectTheme() {
        return this.selectTheme;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        super.onAttachedToRecyclerView(recyclerView);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
        final GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.onyx.galaxy.note.editor.view.adapter.ThemeAdapter$onAttachedToRecyclerView$1
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int position) {
                if (ThemeAdapter.this.getItemViewType(position) == 0) {
                    return gridLayoutManager.getSpanCount();
                }
                return 1;
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (viewType == 0) {
            ItemThemeHeaderBinding inflate = ItemThemeHeaderBinding.inflate(LayoutInflater.from(context), parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
            return new ThemeItemHeaderHolder(inflate);
        }
        ItemThemeBinding inflate2 = ItemThemeBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate2, "inflate(...)");
        return new ThemeItemHolder(inflate2);
    }

    public final void setCallback(@NotNull Function1<? super SkinBean, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    public final void setHasPayment(boolean z) {
        this.hasPayment = z;
    }

    public final void setSelectTheme(int i) {
        this.selectTheme = i;
        notifyDataSetChanged();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int position, @Nullable final SkinBean item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        if (holder instanceof ThemeItemHolder) {
            ThemeItemHolder themeItemHolder = (ThemeItemHolder) holder;
            themeItemHolder.getBinding().ivThemeThumbnail.setImageResource(item.getThemeThumbnailRes());
            themeItemHolder.getBinding().tvName.setText(item.getTitle());
            themeItemHolder.getBinding().tvName.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_text_color_01));
            boolean z = this.selectTheme == item.getThemeType();
            themeItemHolder.getBinding().tvName.setSelected(z);
            themeItemHolder.getBinding().ivItemThemeStroke.setSelected(z);
            themeItemHolder.getBinding().cbSel.setChecked(z);
            TintCheckBox cbSel = themeItemHolder.getBinding().cbSel;
            Intrinsics.checkNotNullExpressionValue(cbSel, "cbSel");
            cbSel.setVisibility(z ? 0 : 8);
            TextView tvVipStyle = themeItemHolder.getBinding().tvVipStyle;
            Intrinsics.checkNotNullExpressionValue(tvVipStyle, "tvVipStyle");
            tvVipStyle.setVisibility(item.getThemeStyle().isVipStyle() ? 0 : 8);
            themeItemHolder.getBinding().cbSel.tint();
            themeItemHolder.getBinding().ivItemThemeStroke.tint();
            themeItemHolder.getBinding().themeContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wgn
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ThemeAdapter.m47714m(ThemeAdapter.this, item, view);
                }
            });
            ImageView ivPayment = themeItemHolder.getBinding().ivPayment;
            Intrinsics.checkNotNullExpressionValue(ivPayment, "ivPayment");
            ivPayment.setVisibility((item.getThemeStyle().isVipStyle() || item.isFree() || this.hasPayment) ? false : true ? 0 : 8);
        }
        if (holder instanceof ThemeItemHeaderHolder) {
            ThemeItemHeaderHolder themeItemHeaderHolder = (ThemeItemHeaderHolder) holder;
            themeItemHeaderHolder.getBinding().tvThemeTitle.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_text_color_01));
            themeItemHeaderHolder.getBinding().tvThemeTitle.setText(item.getThemeStyle().getStyleNameRes());
        }
    }
}
