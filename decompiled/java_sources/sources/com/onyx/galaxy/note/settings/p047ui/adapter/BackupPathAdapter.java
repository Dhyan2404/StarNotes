package com.onyx.galaxy.note.settings.p047ui.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.p042ui.data.BackupFilePaths;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ItemBackupPathBinding;
import com.onyx.galaxy.note.settings.data.BackupPathBean;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0015J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/adapter/BackupPathAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/settings/data/BackupPathBean;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemBackupPathBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "", "l", "m", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBackupPathAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupPathAdapter.kt\ncom/onyx/galaxy/note/settings/ui/adapter/BackupPathAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,59:1\n256#2,2:60\n*S KotlinDebug\n*F\n+ 1 BackupPathAdapter.kt\ncom/onyx/galaxy/note/settings/ui/adapter/BackupPathAdapter\n*L\n33#1:60,2\n*E\n"})
/* loaded from: classes9.dex */
public final class BackupPathAdapter extends BaseQuickAdapter<BackupPathBean, DataBindingHolder<ItemBackupPathBinding>> {
    public BackupPathAdapter() {
        super(null, 1, null);
    }

    /* renamed from: l */
    public final String m50742l(int position) {
        BackupPathBean item = getItem(position);
        Intrinsics.checkNotNull(item);
        if (item.getIsInternal()) {
            String string = ResManager.INSTANCE.getString(C10651R.string.internal_storage);
            Intrinsics.checkNotNull(string);
            return string;
        }
        return ResManager.INSTANCE.getString(C10651R.string.storage_card) + position;
    }

    /* renamed from: m */
    public final String m50743m(int position) {
        String string = ResManager.INSTANCE.getString(C10651R.string.path_storage);
        Intrinsics.checkNotNull(string);
        BackupPathBean item = getItem(position);
        Intrinsics.checkNotNull(item);
        String format = String.format(string, Arrays.copyOf(new Object[]{item.getPath()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @SuppressLint({"NotifyDataSetChanged"})
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemBackupPathBinding> holder, int position, @Nullable BackupPathBean item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        ItemBackupPathBinding binding = holder.getBinding();
        TintImageView ivSelected = binding.ivSelected;
        Intrinsics.checkNotNullExpressionValue(ivSelected, "ivSelected");
        String backupDirPath = BackupFilePaths.INSTANCE.getBackupDirPath();
        Intrinsics.checkNotNull(item);
        ivSelected.setVisibility(Intrinsics.areEqual(backupDirPath, item.getPath()) ? 0 : 8);
        binding.tvName.setText(m50742l(position));
        binding.tvPath.setText(m50743m(position));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemBackupPathBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemBackupPathBinding inflate = ItemBackupPathBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
