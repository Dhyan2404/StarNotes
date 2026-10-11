package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.chad.library.adapter4.BaseDifferAdapter;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\f\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002,-B\u0007¢\u0006\u0004\b*\u0010+J\u0016\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\"\u0010\u000b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u0011\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0005H\u0014R2\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0012j\b\u0012\u0004\u0012\u00020\u0002`\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010!\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R*\u0010&\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/ImageAdapter;", "Lcom/chad/library/adapter4/BaseDifferAdapter;", "Landroid/net/Uri;", "Lcom/onyx/galaxy/note/editor/view/adapter/ImageAdapter$ImageHolder;", "uri", "", "position", "", "toggleSelect", "holder", "item", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "t", "Ljava/util/ArrayList;", "getSelectList", "()Ljava/util/ArrayList;", "setSelectList", "(Ljava/util/ArrayList;)V", "selectList", "u", "I", "getMaxSelectCount", "()I", "setMaxSelectCount", "(I)V", "maxSelectCount", "", "value", "v", Constants.HASIDCALL_INDEX_SIG, "isMultiSelect", Constants.BOOLEAN_VALUE_SIG, "setMultiSelect", "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "a", "ImageHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nImageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/ImageAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,97:1\n256#2,2:98\n*S KotlinDebug\n*F\n+ 1 ImageAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/ImageAdapter\n*L\n67#1:98,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ImageAdapter extends BaseDifferAdapter<Uri, ImageHolder> {

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public ArrayList<Uri> selectList;

    /* renamed from: u, reason: from kotlin metadata */
    public int maxSelectCount;

    /* renamed from: v, reason: from kotlin metadata */
    public boolean isMultiSelect;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0010\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u000f\u0010\f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/ImageAdapter$ImageHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/View;", "H", "Landroid/view/View;", "getItemView", "()Landroid/view/View;", "itemView", "Landroid/widget/ImageView;", "I", "Landroid/widget/ImageView;", "getIvSelect", "()Landroid/widget/ImageView;", "ivSelect", "J", "getIvImage", "ivImage", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class ImageHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final View itemView;

        /* renamed from: I, reason: from kotlin metadata */
        @NotNull
        public final ImageView ivSelect;

        /* renamed from: J, reason: from kotlin metadata */
        @NotNull
        public final ImageView ivImage;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ImageHolder(@NotNull View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.itemView = itemView;
            View findViewById = itemView.findViewById(C10651R.id.iv_select);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
            this.ivSelect = (ImageView) findViewById;
            View findViewById2 = itemView.findViewById(C10651R.id.iv_image);
            Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
            this.ivImage = (ImageView) findViewById2;
        }

        @NotNull
        public final View getItemView() {
            return this.itemView;
        }

        @NotNull
        public final ImageView getIvImage() {
            return this.ivImage;
        }

        @NotNull
        public final ImageView getIvSelect() {
            return this.ivSelect;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.ImageAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C12276a extends DiffUtil.ItemCallback<Uri> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(@NotNull Uri oldItem, @NotNull Uri newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem.getPath(), newItem.getPath());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(@NotNull Uri oldItem, @NotNull Uri newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }

    public ImageAdapter() {
        super(new C12276a());
        this.selectList = new ArrayList<>();
        this.maxSelectCount = ResManager.INSTANCE.getInteger(C10651R.integer.image_picker_max_count);
    }

    public final int getMaxSelectCount() {
        return this.maxSelectCount;
    }

    @NotNull
    public final ArrayList<Uri> getSelectList() {
        return this.selectList;
    }

    /* renamed from: isMultiSelect, reason: from getter */
    public final boolean getIsMultiSelect() {
        return this.isMultiSelect;
    }

    public final void setMaxSelectCount(int i) {
        this.maxSelectCount = i;
    }

    public final void setMultiSelect(boolean z) {
        if (this.isMultiSelect != z) {
            this.isMultiSelect = z;
            if (!z) {
                this.selectList.clear();
            }
            notifyDataSetChanged();
        }
    }

    public final void setSelectList(@NotNull ArrayList<Uri> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.selectList = arrayList;
    }

    public final void toggleSelect(@NotNull Uri uri, int position) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        if (this.selectList.contains(uri)) {
            this.selectList.remove(uri);
        } else if (this.selectList.size() >= this.maxSelectCount) {
            return;
        } else {
            this.selectList.add(uri);
        }
        notifyItemChanged(position);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull ImageHolder holder, int position, @Nullable Uri item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        boolean contains = this.selectList.contains(item);
        holder.getIvSelect().setSelected(contains);
        boolean z = true;
        if (!Intrinsics.areEqual(holder.getIvImage().getTag(), item)) {
            Glide.with(holder.getIvImage()).load(item).skipMemoryCache(true).diskCacheStrategy(DiskCacheStrategy.NONE).into(holder.getIvImage());
        }
        holder.getIvImage().setTag(item);
        ImageView ivSelect = holder.getIvSelect();
        if (!this.isMultiSelect || (this.selectList.size() >= this.maxSelectCount && !contains)) {
            z = false;
        }
        ivSelect.setVisibility(z ? 0 : 8);
        if (this.isMultiSelect && this.selectList.size() >= this.maxSelectCount && !holder.getIvSelect().isSelected()) {
            holder.getIvImage().setAlpha(ResManager.INSTANCE.getFloat(C10651R.dimen.image_select_alpha));
        } else {
            holder.getIvImage().setAlpha(ResManager.INSTANCE.getFloat(C10651R.dimen.max_alpha));
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public ImageHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        View inflate = LayoutInflater.from(EditorBundleKt.appContext()).inflate(C10651R.layout.item_image_picker, parent, false);
        Intrinsics.checkNotNull(inflate);
        return new ImageHolder(inflate);
    }
}
