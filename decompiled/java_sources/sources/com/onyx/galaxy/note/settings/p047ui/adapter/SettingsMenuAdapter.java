package com.onyx.galaxy.note.settings.p047ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.settings.data.SettingsMenuType;
import com.onyx.galaxy.note.settings.viewmodel.SettingsViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0014\u0010\u0015J\"\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;", "Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;", "r", "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;", "settingViewModel", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;)V", "MenuHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SettingsMenuAdapter extends BaseQuickAdapter<SettingsMenuType, MenuHolder> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final SettingsViewModel settingViewModel;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u001eR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0019\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u001c\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u0010\u001a\u0004\b\u001b\u0010\u0012¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/View;", "H", "Landroid/view/View;", "getItemView", "()Landroid/view/View;", "itemView", "Landroid/widget/TextView;", "I", "Landroid/widget/TextView;", "getTvName", "()Landroid/widget/TextView;", "tvName", "Lcom/onyx/android/sdk/theme/widgets/TintImageView;", "J", "Lcom/onyx/android/sdk/theme/widgets/TintImageView;", "getIcon", "()Lcom/onyx/android/sdk/theme/widgets/TintImageView;", "icon", "Landroid/widget/LinearLayout;", "K", "Landroid/widget/LinearLayout;", "getItemContainer", "()Landroid/widget/LinearLayout;", "itemContainer", "L", "getNewFeatureImage", "newFeatureImage", Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
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
        public final TintImageView icon;

        /* renamed from: K, reason: from kotlin metadata */
        @NotNull
        public final LinearLayout itemContainer;

        /* renamed from: L, reason: from kotlin metadata */
        @NotNull
        public final TintImageView newFeatureImage;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MenuHolder(@NotNull View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.itemView = itemView;
            View findViewById = itemView.findViewById(C10651R.id.tv_setting_menu_name);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
            this.tvName = (TextView) findViewById;
            View findViewById2 = itemView.findViewById(C10651R.id.iv_menu);
            Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
            this.icon = (TintImageView) findViewById2;
            View findViewById3 = itemView.findViewById(C10651R.id.ll_item_container);
            Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
            this.itemContainer = (LinearLayout) findViewById3;
            View findViewById4 = itemView.findViewById(C10651R.id.newFeatureImage);
            Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(...)");
            this.newFeatureImage = (TintImageView) findViewById4;
        }

        @NotNull
        public final TintImageView getIcon() {
            return this.icon;
        }

        @NotNull
        public final LinearLayout getItemContainer() {
            return this.itemContainer;
        }

        @NotNull
        public final View getItemView() {
            return this.itemView;
        }

        @NotNull
        public final TintImageView getNewFeatureImage() {
            return this.newFeatureImage;
        }

        @NotNull
        public final TextView getTvName() {
            return this.tvName;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsMenuAdapter(@NotNull SettingsViewModel settingViewModel) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(settingViewModel, "settingViewModel");
        this.settingViewModel = settingViewModel;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull MenuHolder holder, int position, @Nullable SettingsMenuType item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        boolean z = this.settingViewModel.getSelectMenuType().getValue() == item;
        if (item != null) {
            holder.getTvName().setText(ResManager.INSTANCE.getString(item.getMenuName()));
            holder.getIcon().setImageResource(item.getImageResource());
            holder.getIcon().setSelected(z);
            holder.getItemContainer().setSelected(z);
            ViewKt.setViewVisibleOrInvisible(holder.getNewFeatureImage(), item.getNewFeatureImageResource() != 0);
            holder.getNewFeatureImage().setImageResource(item.getNewFeatureImageResource());
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public MenuHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        View inflate = LayoutInflater.from(context).inflate(C10651R.layout.item_settings_menu, parent, false);
        Intrinsics.checkNotNull(inflate);
        return new MenuHolder(inflate);
    }
}
