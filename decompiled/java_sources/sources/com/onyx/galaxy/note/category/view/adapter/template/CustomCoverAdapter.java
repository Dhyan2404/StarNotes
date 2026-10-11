package com.onyx.galaxy.note.category.view.adapter.template;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseDifferAdapter;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel;
import com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002'(B\u0011\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b&\u0010\u001cJ\u0006\u0010\u0005\u001a\u00020\u0004J\b\u0010\u0007\u001a\u00020\u0006H\u0007J\u0006\u0010\b\u001a\u00020\u0004J\u001e\u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\nH\u0014J\"\u0010\u000f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0004H\u0014R$\u0010\u001d\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR*\u0010\"\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001e8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006)"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;", "Lcom/chad/library/adapter4/BaseDifferAdapter;", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter$TemplateHolder;", "", "getSelectPosition", "", "notifySelectChange", "findSelectPosition", "position", "", "list", "getItemViewType", "holder", "item", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "t", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "getTemplateViewModel", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "setTemplateViewModel", "(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V", "templateViewModel", "", "value", "u", Constants.HASIDCALL_INDEX_SIG, "isMultiSelectMode", Constants.BOOLEAN_VALUE_SIG, "setMultiSelectMode", "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "a", "TemplateHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCustomCoverAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomCoverAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,127:1\n350#2,7:128\n350#2,7:135\n256#3,2:142\n256#3,2:144\n256#3,2:146\n*S KotlinDebug\n*F\n+ 1 CustomCoverAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter\n*L\n36#1:128,7\n49#1:135,7\n75#1:142,2\n80#1:144,2\n81#1:146,2\n*E\n"})
/* loaded from: classes9.dex */
public final class CustomCoverAdapter extends BaseDifferAdapter<CoverModel, TemplateHolder> {

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public NoteTemplateViewModel templateViewModel;

    /* renamed from: u, reason: from kotlin metadata */
    public boolean isMultiSelectMode;

    @Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010)R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018R\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006*"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter$TemplateHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/widget/TextView;", "H", "Landroid/widget/TextView;", "getTitle", "()Landroid/widget/TextView;", "setTitle", "(Landroid/widget/TextView;)V", "title", "Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;", "I", "Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;", "getIvThumb", "()Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;", "setIvThumb", "(Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;)V", "ivThumb", "Landroid/widget/ImageView;", "J", "Landroid/widget/ImageView;", "getIvSelected", "()Landroid/widget/ImageView;", "setIvSelected", "(Landroid/widget/ImageView;)V", "ivSelected", "K", "getIvMultiSelected", "setIvMultiSelected", "ivMultiSelected", "", "L", Constants.STRING_SIG, "getThumbTag", "()Ljava/lang/String;", "setThumbTag", "(Ljava/lang/String;)V", "thumbTag", "Landroid/view/View;", "itemView", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class TemplateHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public TextView title;

        /* renamed from: I, reason: from kotlin metadata */
        @NotNull
        public TemplateThumbnailView ivThumb;

        /* renamed from: J, reason: from kotlin metadata */
        @NotNull
        public ImageView ivSelected;

        /* renamed from: K, reason: from kotlin metadata */
        @NotNull
        public ImageView ivMultiSelected;

        /* renamed from: L, reason: from kotlin metadata */
        @NotNull
        public String thumbTag;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TemplateHolder(@NotNull View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            View findViewById = itemView.findViewById(C10651R.id.tv_template_name);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
            this.title = (TextView) findViewById;
            View findViewById2 = itemView.findViewById(C10651R.id.iv_thumbnail);
            Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
            this.ivThumb = (TemplateThumbnailView) findViewById2;
            View findViewById3 = itemView.findViewById(C10651R.id.iv_template_selected);
            Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
            this.ivSelected = (ImageView) findViewById3;
            View findViewById4 = itemView.findViewById(C10651R.id.iv_template_multi_selected);
            Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(...)");
            this.ivMultiSelected = (ImageView) findViewById4;
            this.thumbTag = "";
        }

        @NotNull
        public final ImageView getIvMultiSelected() {
            return this.ivMultiSelected;
        }

        @NotNull
        public final ImageView getIvSelected() {
            return this.ivSelected;
        }

        @NotNull
        public final TemplateThumbnailView getIvThumb() {
            return this.ivThumb;
        }

        @NotNull
        public final String getThumbTag() {
            return this.thumbTag;
        }

        @NotNull
        public final TextView getTitle() {
            return this.title;
        }

        public final void setIvMultiSelected(@NotNull ImageView imageView) {
            Intrinsics.checkNotNullParameter(imageView, "<set-?>");
            this.ivMultiSelected = imageView;
        }

        public final void setIvSelected(@NotNull ImageView imageView) {
            Intrinsics.checkNotNullParameter(imageView, "<set-?>");
            this.ivSelected = imageView;
        }

        public final void setIvThumb(@NotNull TemplateThumbnailView templateThumbnailView) {
            Intrinsics.checkNotNullParameter(templateThumbnailView, "<set-?>");
            this.ivThumb = templateThumbnailView;
        }

        public final void setThumbTag(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.thumbTag = str;
        }

        public final void setTitle(@NotNull TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.title = textView;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.view.adapter.template.CustomCoverAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C11419a extends DiffUtil.ItemCallback<CoverModel> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        @SuppressLint({"DiffUtilEquals"})
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(@NotNull CoverModel oldItem, @NotNull CoverModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(@NotNull CoverModel oldItem, @NotNull CoverModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }

    public CustomCoverAdapter(@Nullable NoteTemplateViewModel noteTemplateViewModel) {
        super(new C11419a());
        this.templateViewModel = noteTemplateViewModel;
    }

    public final int findSelectPosition() {
        MutableLiveData<CoverModel> coverModel;
        CoverModel value;
        if (this.isMultiSelectMode) {
            return -1;
        }
        Iterator<CoverModel> it2 = getItems().iterator();
        int i = 0;
        while (it2.hasNext()) {
            String uniqueId = it2.next().getUniqueId();
            NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
            if (Intrinsics.areEqual(uniqueId, (noteTemplateViewModel == null || (coverModel = noteTemplateViewModel.getCoverModel()) == null || (value = coverModel.getValue()) == null) ? null : value.getUniqueId())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public int getItemViewType(int position, @NotNull List<CoverModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return list.get(position).getOrientation();
    }

    public final int getSelectPosition() {
        MutableLiveData<CoverModel> coverModel;
        CoverModel value;
        if (this.isMultiSelectMode) {
            return -1;
        }
        Iterator<CoverModel> it2 = getItems().iterator();
        int i = 0;
        while (it2.hasNext()) {
            String uniqueId = it2.next().getUniqueId();
            NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
            if (Intrinsics.areEqual(uniqueId, (noteTemplateViewModel == null || (coverModel = noteTemplateViewModel.getCoverModel()) == null || (value = coverModel.getValue()) == null) ? null : value.getUniqueId())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Nullable
    public final NoteTemplateViewModel getTemplateViewModel() {
        return this.templateViewModel;
    }

    /* renamed from: isMultiSelectMode, reason: from getter */
    public final boolean getIsMultiSelectMode() {
        return this.isMultiSelectMode;
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void notifySelectChange() {
        notifyDataSetChanged();
    }

    public final void setMultiSelectMode(boolean z) {
        if (this.isMultiSelectMode != z) {
            this.isMultiSelectMode = z;
            notifySelectChange();
        }
    }

    public final void setTemplateViewModel(@Nullable NoteTemplateViewModel noteTemplateViewModel) {
        this.templateViewModel = noteTemplateViewModel;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull TemplateHolder holder, int position, @Nullable CoverModel item) {
        boolean z;
        Map<String, CoverModel> customCoverMultiSelectList;
        MutableLiveData<CoverModel> coverModel;
        CoverModel value;
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item != null) {
            holder.getTitle().setText(item.getLocalTitle());
            if (!this.isMultiSelectMode) {
                String uniqueId = item.getUniqueId();
                NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
                z = Intrinsics.areEqual(uniqueId, (noteTemplateViewModel == null || (coverModel = noteTemplateViewModel.getCoverModel()) == null || (value = coverModel.getValue()) == null) ? null : value.getUniqueId());
            } else {
                NoteTemplateViewModel noteTemplateViewModel2 = this.templateViewModel;
                z = (noteTemplateViewModel2 == null || (customCoverMultiSelectList = noteTemplateViewModel2.getCustomCoverMultiSelectList()) == null || !customCoverMultiSelectList.containsKey(item.getUniqueId())) ? false : true;
            }
            holder.getTitle().setSelected(z);
            if (this.isMultiSelectMode) {
                holder.getIvMultiSelected().setSelected(z);
                holder.getIvSelected().setVisibility(8);
            } else {
                holder.getIvMultiSelected().setSelected(false);
                holder.getIvSelected().setSelected(z);
            }
            holder.getIvMultiSelected().setVisibility(this.isMultiSelectMode ? 0 : 8);
            holder.getIvSelected().setVisibility(!this.isMultiSelectMode && z ? 0 : 8);
            if (Intrinsics.areEqual(holder.getThumbTag(), item.toString())) {
                return;
            }
            holder.getIvThumb().loadCoverTemplateThumbnail(item);
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public TemplateHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        View inflate;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (Orientation.INSTANCE.isPortrait(viewType)) {
            inflate = LayoutInflater.from(context).inflate(C10651R.layout.item_template_custom_vertiacl, parent, false);
        } else {
            inflate = LayoutInflater.from(context).inflate(C10651R.layout.item_template_custom_horizontal, parent, false);
        }
        Intrinsics.checkNotNull(inflate);
        return new TemplateHolder(inflate);
    }
}
