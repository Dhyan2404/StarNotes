package com.onyx.galaxy.note.category.view.adapter.template;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseDifferAdapter;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.note.bean.CoverCategory;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.event.DeleteCategoryEvent;
import com.onyx.galaxy.note.category.view.adapter.TemplateDiffCallback;
import com.onyx.galaxy.note.category.view.adapter.template.CoverTitleCategoryAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001!B\u0007¢\u0006\u0004\b\u001f\u0010 J\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0002J\u001a\u0010\u000e\u001a\u00020\n2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\fJ\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0007H\u0007J\"\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0015J \u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0007H\u0014J\u0010\u0010\u0019\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0002H\u0002R\u0016\u0010\u001c\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR$\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;", "Lcom/chad/library/adapter4/BaseDifferAdapter;", "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;", "Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter$CategoryHolder;", "findSelectedItem", "", CouchFieldKey.KEY_CATEGORY_ID, "", "getSelectPosition", "item", "", "selectItem", "Lkotlin/Function1;", "callback", "setItemClickCallback", "position", "setDisplayPosition", "holder", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "r", "t", "I", "displayPosition", "u", "Lkotlin/jvm/functions/Function1;", Constants.CONSTRUCTOR_NAME, "()V", "CategoryHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCoverTitleCategoryAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoverTitleCategoryAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,104:1\n350#2,7:105\n*S KotlinDebug\n*F\n+ 1 CoverTitleCategoryAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter\n*L\n37#1:105,7\n*E\n"})
/* loaded from: classes9.dex */
public final class CoverTitleCategoryAdapter extends BaseDifferAdapter<CoverCategory, CategoryHolder> {

    /* renamed from: t, reason: from kotlin metadata */
    public int displayPosition;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public Function1<? super Integer, Unit> callback;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter$CategoryHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/widget/TextView;", "H", "Landroid/widget/TextView;", "getTitle", "()Landroid/widget/TextView;", "setTitle", "(Landroid/widget/TextView;)V", "title", "Landroid/view/View;", "itemView", Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class CategoryHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public TextView title;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CategoryHolder(@NotNull View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            View findViewById = itemView.findViewById(C10651R.id.tv_category_title_name);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
            this.title = (TextView) findViewById;
        }

        @NotNull
        public final TextView getTitle() {
            return this.title;
        }

        public final void setTitle(@NotNull TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.title = textView;
        }
    }

    public CoverTitleCategoryAdapter() {
        super(new TemplateDiffCallback());
    }

    /* renamed from: p */
    public static final void m44230p(CoverTitleCategoryAdapter this$0, CategoryHolder holder, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(holder, "$holder");
        int absoluteAdapterPosition = holder.getAbsoluteAdapterPosition();
        this$0.displayPosition = absoluteAdapterPosition;
        Function1<? super Integer, Unit> function1 = this$0.callback;
        if (function1 != null) {
            function1.invoke(Integer.valueOf(absoluteAdapterPosition));
        }
        this$0.notifyDataSetChanged();
    }

    /* renamed from: q */
    public static final boolean m44231q(CoverCategory coverCategory, CoverTitleCategoryAdapter this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (coverCategory.getType() != 3) {
            return false;
        }
        this$0.m44232r(coverCategory);
        return true;
    }

    @Nullable
    public final CoverCategory findSelectedItem() {
        Object orNull;
        if (CollectionKt.isNullOrEmpty(getItems())) {
            return null;
        }
        orNull = CollectionsKt___CollectionsKt.getOrNull(getItems(), this.displayPosition);
        return (CoverCategory) orNull;
    }

    public final int getSelectPosition(@Nullable String categoryId) {
        Iterator<CoverCategory> it2 = getItems().iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (Intrinsics.areEqual(it2.next().getUniqueId(), categoryId)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: r */
    public final void m44232r(final CoverCategory item) {
        new CommonDialog.Builder(getContext()).setTitle(C10651R.string.sticker_delete_sticker_category_title).setMessage(C10651R.string.delete_material_category_confirm).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.category.view.adapter.template.CoverTitleCategoryAdapter$showDeleteDialog$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog dialog, @NotNull String editTextStr) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(editTextStr, "editTextStr");
                GlobalBundle.INSTANCE.postEvent(new DeleteCategoryEvent(CoverCategory.this.getUniqueId()));
            }
        }).create().show();
    }

    public final void selectItem(@Nullable CoverCategory item) {
        int indexOf;
        indexOf = CollectionsKt___CollectionsKt.indexOf((List<? extends CoverCategory>) ((List<? extends Object>) getItems()), item);
        setDisplayPosition(Math.max(0, indexOf));
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void setDisplayPosition(int position) {
        this.displayPosition = position;
        notifyDataSetChanged();
    }

    public final void setItemClickCallback(@NotNull Function1<? super Integer, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @SuppressLint({"NotifyDataSetChanged"})
    public void onBindViewHolder(@NotNull final CategoryHolder holder, int position, @Nullable final CoverCategory item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        holder.getTitle().setText(item.getTitle());
        holder.getTitle().setSelected(holder.getAbsoluteAdapterPosition() == this.displayPosition);
        holder.getTitle().setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.rfe
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CoverTitleCategoryAdapter.m44230p(CoverTitleCategoryAdapter.this, holder, view);
            }
        });
        holder.getTitle().setOnLongClickListener(new View.OnLongClickListener() { // from class: com.sunia.HTREnginev2.sfe
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean m44231q;
                m44231q = CoverTitleCategoryAdapter.m44231q(CoverCategory.this, this, view);
                return m44231q;
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public CategoryHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        View inflate = LayoutInflater.from(context).inflate(C10651R.layout.item_template_category_title, parent, false);
        Intrinsics.checkNotNull(inflate);
        return new CategoryHolder(inflate);
    }
}
