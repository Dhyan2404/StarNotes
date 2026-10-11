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
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.template.TemplateArgs;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.p044ui.TemplateRecycleView;
import com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel;
import com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002%&B\u0011\u0012\b\u0010#\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b$\u0010\"J\b\u0010\u0005\u001a\u00020\u0004H\u0007J\u001e\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0014J0\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u00022\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\bH\u0014J\"\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0006H\u0014J\u001a\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\u0002H\u0002J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0002J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0002J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\f\u001a\u00020\u0002H\u0002J\u0018\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0002R$\u0010#\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006'"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;", "Lcom/chad/library/adapter4/BaseDifferAdapter;", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;", "", "notifySelectChange", "", "position", "", "list", "getItemViewType", "holder", "item", "", "payloads", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "r", "q", "p", "", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "t", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "getTemplateViewModel", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "setTemplateViewModel", "(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V", "templateViewModel", Constants.CONSTRUCTOR_NAME, "a", "TemplateHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPaperAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaperAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,156:1\n1855#2,2:157\n1864#2,3:163\n256#3,2:159\n256#3,2:161\n*S KotlinDebug\n*F\n+ 1 PaperAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter\n*L\n43#1:157,2\n112#1:163,3\n63#1:159,2\n99#1:161,2\n*E\n"})
/* loaded from: classes9.dex */
public final class PaperAdapter extends BaseDifferAdapter<TemplateModel, TemplateHolder> {

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public NoteTemplateViewModel templateViewModel;

    @Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b$\u0010%R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/widget/TextView;", "H", "Landroid/widget/TextView;", "getTitle", "()Landroid/widget/TextView;", "setTitle", "(Landroid/widget/TextView;)V", "title", "Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;", "I", "Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;", "getTemplateThumbnailView", "()Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;", "setTemplateThumbnailView", "(Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;)V", "templateThumbnailView", "Landroid/widget/ImageView;", "J", "Landroid/widget/ImageView;", "getIvSelected", "()Landroid/widget/ImageView;", "setIvSelected", "(Landroid/widget/ImageView;)V", "ivSelected", "", "K", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getThumbTag", "()Ljava/lang/String;", "setThumbTag", "(Ljava/lang/String;)V", "thumbTag", "Landroid/view/View;", "itemView", Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class TemplateHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public TextView title;

        /* renamed from: I, reason: from kotlin metadata */
        @NotNull
        public TemplateThumbnailView templateThumbnailView;

        /* renamed from: J, reason: from kotlin metadata */
        @NotNull
        public ImageView ivSelected;

        /* renamed from: K, reason: from kotlin metadata */
        @NotNull
        public String thumbTag;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TemplateHolder(@NotNull View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            View findViewById = itemView.findViewById(C10651R.id.tv_template_name);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
            this.title = (TextView) findViewById;
            View findViewById2 = itemView.findViewById(C10651R.id.template_thumbnail);
            Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
            this.templateThumbnailView = (TemplateThumbnailView) findViewById2;
            View findViewById3 = itemView.findViewById(C10651R.id.iv_template_selected);
            Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
            this.ivSelected = (ImageView) findViewById3;
            this.thumbTag = "";
        }

        @NotNull
        public final ImageView getIvSelected() {
            return this.ivSelected;
        }

        @NotNull
        public final TemplateThumbnailView getTemplateThumbnailView() {
            return this.templateThumbnailView;
        }

        @NotNull
        public final String getThumbTag() {
            return this.thumbTag;
        }

        @NotNull
        public final TextView getTitle() {
            return this.title;
        }

        public final void setIvSelected(@NotNull ImageView imageView) {
            Intrinsics.checkNotNullParameter(imageView, "<set-?>");
            this.ivSelected = imageView;
        }

        public final void setTemplateThumbnailView(@NotNull TemplateThumbnailView templateThumbnailView) {
            Intrinsics.checkNotNullParameter(templateThumbnailView, "<set-?>");
            this.templateThumbnailView = templateThumbnailView;
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

    /* renamed from: com.onyx.galaxy.note.category.view.adapter.template.PaperAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C11422a extends DiffUtil.ItemCallback<TemplateModel> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        @SuppressLint({"DiffUtilEquals"})
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(@NotNull TemplateModel oldItem, @NotNull TemplateModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem.getUniqueId(), newItem.getUniqueId()) && Intrinsics.areEqual(oldItem.getCategoryId(), newItem.getCategoryId()) && Intrinsics.areEqual(newItem.getTemplateResourceWrapper().getFillColorList(), oldItem.getTemplateResourceWrapper().getFillColorList());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(@NotNull TemplateModel oldItem, @NotNull TemplateModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }

    public PaperAdapter(@Nullable NoteTemplateViewModel noteTemplateViewModel) {
        super(new C11422a());
        this.templateViewModel = noteTemplateViewModel;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public int getItemViewType(int position, @NotNull List<TemplateModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return list.get(position).getOrientation();
    }

    @Nullable
    public final NoteTemplateViewModel getTemplateViewModel() {
        return this.templateViewModel;
    }

    /* renamed from: n */
    public final boolean m44241n(TemplateModel item) {
        MutableLiveData<TemplateModel> paperModel;
        TemplateModel value;
        String uniqueId = item.getUniqueId();
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        return Intrinsics.areEqual(uniqueId, (noteTemplateViewModel == null || (paperModel = noteTemplateViewModel.getPaperModel()) == null || (value = paperModel.getValue()) == null) ? null : value.getUniqueId());
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void notifySelectChange() {
        notifyDataSetChanged();
    }

    /* renamed from: o */
    public final void m44242o(TemplateHolder holder, TemplateModel item) {
        m44245r(holder, item);
        holder.setThumbTag(item.toString());
    }

    /* renamed from: p */
    public final void m44243p(TemplateHolder holder, TemplateModel item) {
        MutableLiveData<TemplateModel> paperModel;
        TemplateModel value;
        Object orNull;
        if (m44241n(item)) {
            NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
            if (noteTemplateViewModel != null && (paperModel = noteTemplateViewModel.getPaperModel()) != null && (value = paperModel.getValue()) != null) {
                int i = 0;
                for (Object obj : value.getTemplateResourceWrapper().getResourceList()) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    TemplateResourceModel templateResourceModel = (TemplateResourceModel) obj;
                    orNull = CollectionsKt___CollectionsKt.getOrNull(item.getTemplateResourceWrapper().getResourceList(), i);
                    TemplateResourceModel templateResourceModel2 = (TemplateResourceModel) orNull;
                    if (templateResourceModel2 != null) {
                        templateResourceModel2.setFillColor(templateResourceModel.getFillColor());
                        templateResourceModel2.setStrokeColor(templateResourceModel.getStrokeColor());
                        templateResourceModel2.setColorTransformMode(templateResourceModel.getColorTransformMode());
                    }
                    i = i2;
                }
            }
            m44242o(holder, item);
        }
    }

    /* renamed from: q */
    public final void m44244q(TemplateHolder holder, TemplateModel item) {
        boolean m44241n = m44241n(item);
        holder.getTitle().setSelected(m44241n);
        holder.getIvSelected().setVisibility(m44241n ? 0 : 8);
        if (holder.getTitle().isSelected()) {
            m44242o(holder, item);
        }
    }

    /* renamed from: r */
    public final void m44245r(TemplateHolder holder, TemplateModel item) {
        MutableLiveData<TemplateModel> paperModel;
        TemplateModel value;
        MutableLiveData<TemplateModel> paperModel2;
        TemplateModel value2;
        if (item == null) {
            return;
        }
        String uniqueId = item.getUniqueId();
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        TemplateArgs templateArgs = null;
        if (Intrinsics.areEqual(uniqueId, (noteTemplateViewModel == null || (paperModel2 = noteTemplateViewModel.getPaperModel()) == null || (value2 = paperModel2.getValue()) == null) ? null : value2.getUniqueId())) {
            NoteTemplateViewModel noteTemplateViewModel2 = this.templateViewModel;
            if (noteTemplateViewModel2 != null && (paperModel = noteTemplateViewModel2.getPaperModel()) != null && (value = paperModel.getValue()) != null) {
                templateArgs = value.getTemplateArgs();
            }
            item.setTemplateArgs(templateArgs);
        }
        holder.getTemplateThumbnailView().loadPaperTemplateThumbnail(item);
    }

    public final void setTemplateViewModel(@Nullable NoteTemplateViewModel noteTemplateViewModel) {
        this.templateViewModel = noteTemplateViewModel;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, Object obj, List list) {
        onBindViewHolder((TemplateHolder) viewHolder, i, (TemplateModel) obj, (List<? extends Object>) list);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public TemplateHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        View inflate;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (Orientation.INSTANCE.isPortrait(viewType)) {
            inflate = LayoutInflater.from(context).inflate(C10651R.layout.item_template_normal_vertical, parent, false);
        } else {
            inflate = LayoutInflater.from(context).inflate(C10651R.layout.item_template_normal_horizontal, parent, false);
        }
        Intrinsics.checkNotNull(inflate);
        return new TemplateHolder(inflate);
    }

    public void onBindViewHolder(@NotNull TemplateHolder holder, int position, @Nullable TemplateModel item, @NotNull List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (item == null) {
            return;
        }
        for (Object obj : payloads) {
            if (Intrinsics.areEqual(obj, "select")) {
                m44244q(holder, item);
            }
            if (Intrinsics.areEqual(obj, TemplateRecycleView.PAYLOAD_KEY_CHANGE_SELECT_COLORS)) {
                m44243p(holder, item);
            }
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull TemplateHolder holder, int position, @Nullable TemplateModel item) {
        MutableLiveData<TemplateModel> paperModel;
        TemplateModel value;
        MutableLiveData<TemplateModel> paperModel2;
        TemplateModel value2;
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item != null) {
            holder.getTitle().setText(ResManager.INSTANCE.getStringSafely(item.getTitleResName(), item.getLocalTitle()));
            TextView title = holder.getTitle();
            String uniqueId = item.getUniqueId();
            NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
            String str = null;
            title.setSelected(Intrinsics.areEqual(uniqueId, (noteTemplateViewModel == null || (paperModel2 = noteTemplateViewModel.getPaperModel()) == null || (value2 = paperModel2.getValue()) == null) ? null : value2.getUniqueId()));
            ImageView ivSelected = holder.getIvSelected();
            String uniqueId2 = item.getUniqueId();
            NoteTemplateViewModel noteTemplateViewModel2 = this.templateViewModel;
            if (noteTemplateViewModel2 != null && (paperModel = noteTemplateViewModel2.getPaperModel()) != null && (value = paperModel.getValue()) != null) {
                str = value.getUniqueId();
            }
            ivSelected.setVisibility(Intrinsics.areEqual(uniqueId2, str) ? 0 : 8);
            if (!Intrinsics.areEqual(holder.getThumbTag(), item.toString())) {
                m44245r(holder, item);
            }
            holder.setThumbTag(item.toString());
        }
    }
}
