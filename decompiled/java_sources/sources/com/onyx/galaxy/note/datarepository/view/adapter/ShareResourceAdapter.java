package com.onyx.galaxy.note.datarepository.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ItemShareResourceBinding;
import com.onyx.galaxy.note.datarepository.bean.ShareResourceDownloadBean;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J&\u0010\t\u001a\u00020\b2\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J4\u0010\t\u001a\u00020\b2\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0014J$\u0010\u0012\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0005H\u0014J\u000e\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0002J\u001c\u0010\u0015\u001a\u00020\b2\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0002H\u0002¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;", "Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;", "holder", "", "position", "item", "", "onBindViewHolder", "", "", "payloads", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "bean", "updateDownloadProgress", "l", Constants.CONSTRUCTOR_NAME, "()V", "ItemViewHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShareResourceAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareResourceAdapter.kt\ncom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,85:1\n350#2,7:86\n*S KotlinDebug\n*F\n+ 1 ShareResourceAdapter.kt\ncom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter\n*L\n75#1:86,7\n*E\n"})
/* loaded from: classes9.dex */
public final class ShareResourceAdapter extends BaseQuickAdapter<ShareResourceDownloadBean, ItemViewHolder> {

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public final class ItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemShareResourceBinding binding;

        /* renamed from: I */
        public final /* synthetic */ ShareResourceAdapter f58085I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ItemViewHolder(@NotNull ShareResourceAdapter shareResourceAdapter, ItemShareResourceBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f58085I = shareResourceAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemShareResourceBinding getBinding() {
            return this.binding;
        }
    }

    public ShareResourceAdapter() {
        super(null, 1, null);
    }

    /* renamed from: l */
    public final void m45569l(ItemViewHolder holder, ShareResourceDownloadBean item) {
        ProgressInfo progressInfo = item.getProgressInfo();
        if (progressInfo == null) {
            TintTextView tintTextView = holder.getBinding().tvProgress;
            ResManager resManager = ResManager.INSTANCE;
            tintTextView.setText(resManager.getString(C10651R.string.download_failed));
            holder.getBinding().tvProgress.setTextColor(resManager.getColor(C10651R.color.error_200));
            return;
        }
        if (progressInfo.isComplete()) {
            TintTextView tintTextView2 = holder.getBinding().tvProgress;
            ResManager resManager2 = ResManager.INSTANCE;
            tintTextView2.setText(resManager2.getString(C10651R.string.pending_import));
            holder.getBinding().tvProgress.setTextColor(resManager2.getColor(C10651R.color.theme_primary_color));
            return;
        }
        if (progressInfo.getProgress() <= 0.0d) {
            TintTextView tintTextView3 = holder.getBinding().tvProgress;
            ResManager resManager3 = ResManager.INSTANCE;
            tintTextView3.setText(resManager3.getString(C10651R.string.pending_download));
            holder.getBinding().tvProgress.setTextColor(resManager3.getColor(C10651R.color.theme_primary_color));
            return;
        }
        TintTextView tintTextView4 = holder.getBinding().tvProgress;
        StringBuilder sb = new StringBuilder();
        sb.append((int) progressInfo.getProgress());
        sb.append('%');
        tintTextView4.setText(sb.toString());
        holder.getBinding().tvProgress.setTextColor(ResManager.INSTANCE.getColor(C10651R.color.theme_primary_color));
    }

    public final void updateDownloadProgress(@NotNull ShareResourceDownloadBean bean) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        Iterator<ShareResourceDownloadBean> it2 = getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else if (Intrinsics.areEqual(it2.next().getAttachmentBean(), bean.getAttachmentBean())) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            return;
        }
        ShareResourceDownloadBean item = getItem(i);
        if (item != null) {
            item.setProgressInfo(bean.getProgressInfo());
        }
        notifyItemChanged(i, bean);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(ItemViewHolder itemViewHolder, int i, ShareResourceDownloadBean shareResourceDownloadBean, List list) {
        onBindViewHolder2(itemViewHolder, i, shareResourceDownloadBean, (List<? extends Object>) list);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public ItemViewHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemShareResourceBinding inflate = ItemShareResourceBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new ItemViewHolder(this, inflate);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull ItemViewHolder holder, int position, @Nullable ShareResourceDownloadBean item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        holder.getBinding().tvTitle.setText(item.getAttachmentBean().getName());
        m45569l(holder, item);
    }

    /* renamed from: onBindViewHolder, reason: avoid collision after fix types in other method */
    public void onBindViewHolder2(@NotNull ItemViewHolder holder, int position, @Nullable ShareResourceDownloadBean item, @NotNull List<? extends Object> payloads) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull(payloads);
        if (firstOrNull != null && (firstOrNull instanceof ShareResourceDownloadBean)) {
            m45569l(holder, (ShareResourceDownloadBean) firstOrNull);
        }
    }
}
