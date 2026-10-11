package com.onyx.galaxy.note.settings.p047ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.databinding.ItemEyesComfortSettingBinding;
import com.onyx.galaxy.note.editor.view.adapter.BaseSelectableQuickAdapter;
import com.onyx.galaxy.note.settings.utils.EyesComforterFactory;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\"\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014R\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;", "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;", "Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "u", "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;", "getSelectSetting", "()Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;", "setSelectSetting", "(Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;)V", "selectSetting", Constants.CONSTRUCTOR_NAME, "()V", "EyesComfortModeAdapterHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class EyesComfortSettingsAdapter extends BaseSelectableQuickAdapter<EyesComforterFactory.EyesComforterSetting, EyesComfortModeAdapterHolder> {

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public EyesComforterFactory.EyesComforterSetting selectSetting = EyesComforterFactory.INSTANCE.getDefaultSetting();

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class EyesComfortModeAdapterHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemEyesComfortSettingBinding binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EyesComfortModeAdapterHolder(@NotNull ItemEyesComfortSettingBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.binding = binding;
        }

        @NotNull
        public final ItemEyesComfortSettingBinding getBinding() {
            return this.binding;
        }
    }

    @NotNull
    public final EyesComforterFactory.EyesComforterSetting getSelectSetting() {
        return this.selectSetting;
    }

    public final void setSelectSetting(@NotNull EyesComforterFactory.EyesComforterSetting eyesComforterSetting) {
        Intrinsics.checkNotNullParameter(eyesComforterSetting, "<set-?>");
        this.selectSetting = eyesComforterSetting;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull EyesComfortModeAdapterHolder holder, int position, @Nullable EyesComforterFactory.EyesComforterSetting item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        holder.getBinding().ivStroke.setSelected(this.selectSetting.getType() == item.getType());
        holder.getBinding().icIndicatorColor.setBackgroundColor(item.getIndicatorColor());
        holder.getBinding().tvSettingTitle.setText(ResManager.INSTANCE.getString(item.getTitleResId()));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public EyesComfortModeAdapterHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemEyesComfortSettingBinding inflate = ItemEyesComfortSettingBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new EyesComfortModeAdapterHolder(inflate);
    }
}
