package com.onyx.galaxy.note.category.view.adapter.template;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseDifferAdapter;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.replicator.note.bean.CoverCategory;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.p044ui.TemplateRecycleView;
import com.onyx.galaxy.note.category.view.adapter.TemplateDiffCallback;
import com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001'B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u0019¢\u0006\u0004\b%\u0010&J\u0006\u0010\u0005\u001a\u00020\u0004J\u001e\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0014J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0016J\"\u0010\u0010\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0006H\u0014J\u0012\u0010\u0018\u001a\u00020\u00172\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0002R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR2\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u001dj\b\u0012\u0004\u0012\u00020\u0003`\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006("}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialCoverCategoryAdapter;", "Lcom/chad/library/adapter4/BaseDifferAdapter;", "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;", "Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialCoverCategoryAdapter$CategoryHolder;", "", "notifySelectChange", "", "position", "", "list", "getItemViewType", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "onViewAttachedToWindow", "onViewRecycled", "item", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "t", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "templateViewModel", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "u", "Ljava/util/ArrayList;", "getList", "()Ljava/util/ArrayList;", "setList", "(Ljava/util/ArrayList;)V", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V", "CategoryHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMaterialCoverCategoryAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialCoverCategoryAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/MaterialCoverCategoryAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,91:1\n1855#2,2:92\n*S KotlinDebug\n*F\n+ 1 MaterialCoverCategoryAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/MaterialCoverCategoryAdapter\n*L\n26#1:92,2\n*E\n"})
/* loaded from: classes9.dex */
public final class MaterialCoverCategoryAdapter extends BaseDifferAdapter<CoverCategory, CategoryHolder> {

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final NoteTemplateViewModel templateViewModel;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public ArrayList<CategoryHolder> list;

    @Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006("}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialCoverCategoryAdapter$CategoryHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/widget/TextView;", "H", "Landroid/widget/TextView;", "getTitle", "()Landroid/widget/TextView;", "setTitle", "(Landroid/widget/TextView;)V", "title", "Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;", "I", "Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;", "getRecycleView", "()Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;", "setRecycleView", "(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)V", "recycleView", "Landroid/widget/FrameLayout;", "J", "Landroid/widget/FrameLayout;", "getListContainer", "()Landroid/widget/FrameLayout;", "setListContainer", "(Landroid/widget/FrameLayout;)V", "listContainer", "", "K", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getTag", "()Ljava/lang/String;", "setTag", "(Ljava/lang/String;)V", "tag", "Landroid/view/View;", "itemView", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "templateViewModel", Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class CategoryHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public TextView title;

        /* renamed from: I, reason: from kotlin metadata */
        @NotNull
        public TemplateRecycleView recycleView;

        /* renamed from: J, reason: from kotlin metadata */
        @NotNull
        public FrameLayout listContainer;

        /* renamed from: K, reason: from kotlin metadata */
        @NotNull
        public String tag;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CategoryHolder(@NotNull View itemView, @NotNull NoteTemplateViewModel templateViewModel) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            Intrinsics.checkNotNullParameter(templateViewModel, "templateViewModel");
            View findViewById = itemView.findViewById(C10651R.id.tv_category_name);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
            this.title = (TextView) findViewById;
            View findViewById2 = itemView.findViewById(C10651R.id.rl_template_list);
            Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
            this.recycleView = (TemplateRecycleView) findViewById2;
            View findViewById3 = itemView.findViewById(C10651R.id.list_container);
            Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
            this.listContainer = (FrameLayout) findViewById3;
            this.tag = "";
            this.recycleView.setTemplateViewModel(templateViewModel);
        }

        @NotNull
        public final FrameLayout getListContainer() {
            return this.listContainer;
        }

        @NotNull
        public final TemplateRecycleView getRecycleView() {
            return this.recycleView;
        }

        @NotNull
        public final String getTag() {
            return this.tag;
        }

        @NotNull
        public final TextView getTitle() {
            return this.title;
        }

        public final void setListContainer(@NotNull FrameLayout frameLayout) {
            Intrinsics.checkNotNullParameter(frameLayout, "<set-?>");
            this.listContainer = frameLayout;
        }

        public final void setRecycleView(@NotNull TemplateRecycleView templateRecycleView) {
            Intrinsics.checkNotNullParameter(templateRecycleView, "<set-?>");
            this.recycleView = templateRecycleView;
        }

        public final void setTag(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.tag = str;
        }

        public final void setTitle(@NotNull TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.title = textView;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaterialCoverCategoryAdapter(@NotNull NoteTemplateViewModel templateViewModel) {
        super(new TemplateDiffCallback());
        Intrinsics.checkNotNullParameter(templateViewModel, "templateViewModel");
        this.templateViewModel = templateViewModel;
        this.list = new ArrayList<>();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public int getItemViewType(int position, @NotNull List<CoverCategory> list) {
        Object orNull;
        Orientation orientation;
        Intrinsics.checkNotNullParameter(list, "list");
        orNull = CollectionsKt___CollectionsKt.getOrNull(list, position);
        CoverCategory coverCategory = (CoverCategory) orNull;
        if (coverCategory == null || (orientation = coverCategory.getOrientation()) == null) {
            orientation = Orientation.PORTRAIT;
        }
        return orientation.getValue();
    }

    @NotNull
    public final ArrayList<CategoryHolder> getList() {
        return this.list;
    }

    /* renamed from: n */
    public final String m44239n(CoverCategory item) {
        StringBuilder sb = new StringBuilder();
        sb.append(item);
        sb.append('-');
        sb.append(this.templateViewModel.getOrientationSafely());
        return sb.toString();
    }

    public final void notifySelectChange() {
        Iterator<T> it2 = this.list.iterator();
        while (it2.hasNext()) {
            ((CategoryHolder) it2.next()).getRecycleView().notifyCoverChange();
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        if (holder instanceof CategoryHolder) {
            this.list.add(holder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewDetachedFromWindow(holder);
        TypeIntrinsics.asMutableCollection(this.list).remove(holder);
    }

    public final void setList(@NotNull ArrayList<CategoryHolder> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.list = arrayList;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull CategoryHolder holder, int position, @Nullable CoverCategory item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.getTitle().setText(item != null ? item.getTitle() : null);
        String m44239n = m44239n(item);
        if (!Intrinsics.areEqual(holder.getTag(), m44239n)) {
            holder.getRecycleView().loadCoverList(item, this.templateViewModel.getOrientationSafely(), this.templateViewModel.m72418getTemplateSourceType());
            holder.setTag(m44239n);
        } else {
            holder.getRecycleView().update();
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public CategoryHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        View inflate;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (Orientation.INSTANCE.isPortrait(viewType)) {
            inflate = LayoutInflater.from(context).inflate(C10651R.layout.item_template_category_vertical, parent, false);
        } else {
            inflate = LayoutInflater.from(context).inflate(C10651R.layout.item_template_category_horizontal, parent, false);
        }
        Intrinsics.checkNotNull(inflate);
        return new CategoryHolder(inflate, this.templateViewModel);
    }
}
