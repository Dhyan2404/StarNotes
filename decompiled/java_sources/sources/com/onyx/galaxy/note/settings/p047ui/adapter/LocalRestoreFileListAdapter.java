package com.onyx.galaxy.note.settings.p047ui.adapter;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.galaxy.note.databinding.ItemDriveFileListBinding;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\t\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u001aB\u0007¢\u0006\u0004\b\u0018\u0010\u0019J&\u0010\t\u001a\u00020\b2\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u000f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014J\u000e\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0005R\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "", "Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter$VH;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "pos", "toggleSelect", "", "r", "Ljava/util/List;", "getSelectList", "()Ljava/util/List;", "selectList", Constants.CONSTRUCTOR_NAME, "()V", "VH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LocalRestoreFileListAdapter extends BaseQuickAdapter<String, C12676VH> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final List<String> selectList;

    public LocalRestoreFileListAdapter() {
        super(null, 1, null);
        this.selectList = new ArrayList();
    }

    @NotNull
    public final List<String> getSelectList() {
        return this.selectList;
    }

    public final void toggleSelect(int pos) {
        String item = getItem(pos);
        Intrinsics.checkNotNull(item);
        String str = item;
        if (this.selectList.contains(str)) {
            this.selectList.remove(str);
        } else {
            this.selectList.add(str);
        }
        notifyItemChanged(pos);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull C12676VH holder, int position, @Nullable String item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        File file = new File(item);
        ItemDriveFileListBinding binding = holder.getBinding();
        binding.ivBackupSelect.setSelected(this.selectList.contains(item));
        binding.tvBackupName.setText(file.getName());
        binding.tvSpace.setText(FileUtils.INSTANCE.getFileSize(file.length()));
        binding.tvTime.setText(DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_HHMMSS_2().format(new Date(file.lastModified())));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public C12676VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new C12676VH(this, parent, null, 2, null);
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter$VH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemDriveFileListBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemDriveFileListBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemDriveFileListBinding;", "binding", "Landroid/view/ViewGroup;", "parent", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemDriveFileListBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* renamed from: com.onyx.galaxy.note.settings.ui.adapter.LocalRestoreFileListAdapter$VH */
    /* loaded from: classes9.dex */
    public final class C12676VH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemDriveFileListBinding binding;

        /* renamed from: I */
        public final /* synthetic */ LocalRestoreFileListAdapter f61606I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12676VH(@NotNull LocalRestoreFileListAdapter localRestoreFileListAdapter, @NotNull ViewGroup parent, ItemDriveFileListBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f61606I = localRestoreFileListAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemDriveFileListBinding getBinding() {
            return this.binding;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ C12676VH(com.onyx.galaxy.note.settings.p047ui.adapter.LocalRestoreFileListAdapter r1, android.view.ViewGroup r2, com.onyx.galaxy.note.databinding.ItemDriveFileListBinding r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
            /*
                r0 = this;
                r4 = r4 & 2
                if (r4 == 0) goto L16
                android.content.Context r3 = r2.getContext()
                android.view.LayoutInflater r3 = android.view.LayoutInflater.from(r3)
                r4 = 0
                com.onyx.galaxy.note.databinding.ItemDriveFileListBinding r3 = com.onyx.galaxy.note.databinding.ItemDriveFileListBinding.inflate(r3, r2, r4)
                java.lang.String r4 = "inflate(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            L16:
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.settings.p047ui.adapter.LocalRestoreFileListAdapter.C12676VH.<init>(com.onyx.galaxy.note.settings.ui.adapter.LocalRestoreFileListAdapter, android.view.ViewGroup, com.onyx.galaxy.note.databinding.ItemDriveFileListBinding, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }
}
