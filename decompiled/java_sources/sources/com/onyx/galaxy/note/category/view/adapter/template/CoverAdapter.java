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
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
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

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002$%B\u0011\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\b#\u0010!J\b\u0010\u0005\u001a\u00020\u0004H\u0007J\u001e\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0014J0\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u00022\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\bH\u0014J\"\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0006H\u0014J\u0018\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0002J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0002J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0002J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\f\u001a\u00020\u0002H\u0002R$\u0010\"\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;", "Lcom/chad/library/adapter4/BaseDifferAdapter;", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter$TemplateHolder;", "", "notifySelectChange", "", "position", "", "list", "getItemViewType", "holder", "item", "", "payloads", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "q", "p", C4921e.f26528e, "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "t", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "getTemplateViewModel", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "setTemplateViewModel", "(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V", "templateViewModel", Constants.CONSTRUCTOR_NAME, "a", "TemplateHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCoverAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoverAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,141:1\n1855#2,2:142\n1864#2,3:148\n256#3,2:144\n256#3,2:146\n*S KotlinDebug\n*F\n+ 1 CoverAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter\n*L\n43#1:142,2\n107#1:148,3\n63#1:144,2\n94#1:146,2\n*E\n"})
/* loaded from: classes9.dex */
public final class CoverAdapter extends BaseDifferAdapter<CoverModel, TemplateHolder> {

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public NoteTemplateViewModel templateViewModel;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter$TemplateHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/widget/TextView;", "H", "Landroid/widget/TextView;", "getTitle", "()Landroid/widget/TextView;", "setTitle", "(Landroid/widget/TextView;)V", "title", "Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;", "I", "Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;", "getTemplateThumbnailView", "()Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;", "setTemplateThumbnailView", "(Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;)V", "templateThumbnailView", "Landroid/widget/ImageView;", "J", "Landroid/widget/ImageView;", "getIvSelected", "()Landroid/widget/ImageView;", "setIvSelected", "(Landroid/widget/ImageView;)V", "ivSelected", "Landroid/view/View;", "itemView", Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
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

        public final void setTitle(@NotNull TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.title = textView;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.view.adapter.template.CoverAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C11418a extends DiffUtil.ItemCallback<CoverModel> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        @SuppressLint({"DiffUtilEquals"})
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(@NotNull CoverModel oldItem, @NotNull CoverModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem.toString(), newItem.toString());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(@NotNull CoverModel oldItem, @NotNull CoverModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }

    public CoverAdapter(@Nullable NoteTemplateViewModel noteTemplateViewModel) {
        super(new C11418a());
        this.templateViewModel = noteTemplateViewModel;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public int getItemViewType(int position, @NotNull List<CoverModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return list.get(position).getOrientation();
    }

    @Nullable
    public final NoteTemplateViewModel getTemplateViewModel() {
        return this.templateViewModel;
    }

    /* renamed from: n */
    public final boolean m44221n(CoverModel item) {
        MutableLiveData<CoverModel> coverModel;
        CoverModel value;
        String uniqueId = item.getUniqueId();
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        return Intrinsics.areEqual(uniqueId, (noteTemplateViewModel == null || (coverModel = noteTemplateViewModel.getCoverModel()) == null || (value = coverModel.getValue()) == null) ? null : value.getUniqueId());
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void notifySelectChange() {
        notifyDataSetChanged();
    }

    /* renamed from: o */
    public final void m44222o(TemplateHolder holder, CoverModel item) {
        MutableLiveData<CoverModel> coverModel;
        CoverModel value;
        Object orNull;
        if (m44221n(item)) {
            NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
            if (noteTemplateViewModel != null && (coverModel = noteTemplateViewModel.getCoverModel()) != null && (value = coverModel.getValue()) != null) {
                int i = 0;
                for (Object obj : value.getTemplateResourceWrapper().getFillColorList()) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    int intValue = ((Number) obj).intValue();
                    orNull = CollectionsKt___CollectionsKt.getOrNull(item.getTemplateResourceWrapper().getResourceList(), i);
                    TemplateResourceModel templateResourceModel = (TemplateResourceModel) orNull;
                    if (templateResourceModel != null) {
                        templateResourceModel.setFillColor(intValue);
                    }
                    i = i2;
                }
            }
            m44224q(holder, item);
        }
    }

    /* renamed from: p */
    public final void m44223p(TemplateHolder holder, CoverModel item) {
        boolean m44221n = m44221n(item);
        holder.getTitle().setSelected(m44221n);
        holder.getIvSelected().setVisibility(m44221n ? 0 : 8);
        if (holder.getTitle().isSelected()) {
            m44224q(holder, item);
        }
    }

    /* renamed from: q */
    public final void m44224q(TemplateHolder holder, CoverModel item) {
        holder.getTemplateThumbnailView().loadCoverTemplateThumbnail(item);
    }

    public final void setTemplateViewModel(@Nullable NoteTemplateViewModel noteTemplateViewModel) {
        this.templateViewModel = noteTemplateViewModel;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, Object obj, List list) {
        onBindViewHolder((TemplateHolder) viewHolder, i, (CoverModel) obj, (List<? extends Object>) list);
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

    public void onBindViewHolder(@NotNull TemplateHolder holder, int position, @Nullable CoverModel item, @NotNull List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (item == null) {
            return;
        }
        for (Object obj : payloads) {
            if (Intrinsics.areEqual(obj, "select")) {
                m44223p(holder, item);
            }
            if (Intrinsics.areEqual(obj, TemplateRecycleView.PAYLOAD_KEY_CHANGE_SELECT_COLORS)) {
                m44222o(holder, item);
            }
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull TemplateHolder holder, int position, @Nullable CoverModel item) {
        MutableLiveData<CoverModel> coverModel;
        CoverModel value;
        MutableLiveData<CoverModel> coverModel2;
        CoverModel value2;
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item != null) {
            holder.getTitle().setText(ResManager.INSTANCE.getStringSafely(item.getTitleResName(), item.getLocalTitle()));
            TextView title = holder.getTitle();
            String uniqueId = item.getUniqueId();
            NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
            String str = null;
            title.setSelected(Intrinsics.areEqual(uniqueId, (noteTemplateViewModel == null || (coverModel2 = noteTemplateViewModel.getCoverModel()) == null || (value2 = coverModel2.getValue()) == null) ? null : value2.getUniqueId()));
            ImageView ivSelected = holder.getIvSelected();
            String uniqueId2 = item.getUniqueId();
            NoteTemplateViewModel noteTemplateViewModel2 = this.templateViewModel;
            if (noteTemplateViewModel2 != null && (coverModel = noteTemplateViewModel2.getCoverModel()) != null && (value = coverModel.getValue()) != null) {
                str = value.getUniqueId();
            }
            ivSelected.setVisibility(Intrinsics.areEqual(uniqueId2, str) ? 0 : 8);
            m44224q(holder, item);
        }
    }
}
