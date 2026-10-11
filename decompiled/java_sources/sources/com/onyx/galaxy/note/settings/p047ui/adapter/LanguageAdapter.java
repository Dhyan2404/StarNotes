package com.onyx.galaxy.note.settings.p047ui.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.settings.data.LanguageType;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001aB\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\"\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014R*\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00028\u0006@GX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/settings/data/LanguageType;", "Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter$MenuHolder;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "value", "r", "Lcom/onyx/galaxy/note/settings/data/LanguageType;", "getSelectLanguage", "()Lcom/onyx/galaxy/note/settings/data/LanguageType;", "setSelectLanguage", "(Lcom/onyx/galaxy/note/settings/data/LanguageType;)V", "selectLanguage", Constants.CONSTRUCTOR_NAME, "()V", "MenuHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLanguageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LanguageAdapter.kt\ncom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,50:1\n256#2,2:51\n256#2,2:53\n*S KotlinDebug\n*F\n+ 1 LanguageAdapter.kt\ncom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter\n*L\n36#1:51,2\n37#1:53,2\n*E\n"})
/* loaded from: classes9.dex */
public final class LanguageAdapter extends BaseQuickAdapter<LanguageType, MenuHolder> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public LanguageType selectLanguage;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0011\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0015\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0004\u001a\u0004\b\u0014\u0010\u0006¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter$MenuHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/View;", "H", "Landroid/view/View;", "getItemView", "()Landroid/view/View;", "itemView", "Landroid/widget/TextView;", "I", "Landroid/widget/TextView;", "getTvName", "()Landroid/widget/TextView;", "tvName", "Landroid/widget/ImageView;", "J", "Landroid/widget/ImageView;", "isSelect", "()Landroid/widget/ImageView;", "K", "getDivider", "divider", Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class MenuHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final View itemView;

        /* renamed from: I, reason: from kotlin metadata */
        @NotNull
        public final TextView tvName;

        /* renamed from: J, reason: from kotlin metadata */
        @NotNull
        public final ImageView isSelect;

        /* renamed from: K, reason: from kotlin metadata */
        @NotNull
        public final View divider;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MenuHolder(@NotNull View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.itemView = itemView;
            View findViewById = itemView.findViewById(C10651R.id.tv_name);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
            this.tvName = (TextView) findViewById;
            View findViewById2 = itemView.findViewById(C10651R.id.iv_selected);
            Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
            this.isSelect = (ImageView) findViewById2;
            View findViewById3 = itemView.findViewById(C10651R.id.divider);
            Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
            this.divider = findViewById3;
        }

        @NotNull
        public final View getDivider() {
            return this.divider;
        }

        @NotNull
        public final View getItemView() {
            return this.itemView;
        }

        @NotNull
        public final TextView getTvName() {
            return this.tvName;
        }

        @NotNull
        /* renamed from: isSelect, reason: from getter */
        public final ImageView getIsSelect() {
            return this.isSelect;
        }
    }

    public LanguageAdapter() {
        super(null, 1, null);
        this.selectLanguage = LanguageType.CHINESE_SIMPLIFIED;
    }

    @NotNull
    public final LanguageType getSelectLanguage() {
        return this.selectLanguage;
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void setSelectLanguage(@NotNull LanguageType value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.selectLanguage = value;
        notifyDataSetChanged();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull MenuHolder holder, int position, @Nullable LanguageType item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item != null) {
            holder.getTvName().setText(ResManager.INSTANCE.getString(item.getDisplayName()));
            holder.getDivider().setVisibility(position != getItemCount() - 1 ? 0 : 8);
            holder.getIsSelect().setVisibility(item == this.selectLanguage ? 0 : 8);
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public MenuHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        View inflate = LayoutInflater.from(context).inflate(C10651R.layout.item_setting_select_contianer, parent, false);
        Intrinsics.checkNotNull(inflate);
        return new MenuHolder(inflate);
    }
}
