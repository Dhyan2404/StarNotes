package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.databinding.LayoutStickerCategorySubBinding;
import com.onyx.galaxy.note.editor.view.adapter.StickerSubCategoryAdapter;
import com.onyx.galaxy.note.p048ui.sticker.DeleteMaterialCategoryAction;
import com.onyx.galaxy.note.p048ui.sticker.DeleteSubCategoryAction;
import com.onyx.galaxy.note.p048ui.sticker.StickerUiBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001Bk\b\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u001c\u0010\u001c\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000f0\u0018j\b\u0012\u0004\u0012\u00020\t`\u0019\u0012\u001c\u0010\u001e\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000f0\u0018j\b\u0012\u0004\u0012\u00020\t`\u0019\u0012\u001c\u0010 \u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000f0\u0018j\b\u0012\u0004\u0012\u00020\t`\u0019¢\u0006\u0004\b!\u0010\"J&\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014J(\u0010\u0010\u001a\u00020\u000f2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\r\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0014J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\tH\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\tH\u0002R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R*\u0010\u001c\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000f0\u0018j\b\u0012\u0004\u0012\u00020\t`\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR*\u0010\u001e\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000f0\u0018j\b\u0012\u0004\u0012\u00020\t`\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001bR*\u0010 \u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000f0\u0018j\b\u0012\u0004\u0012\u00020\t`\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001b¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/LayoutStickerCategorySubBinding;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", "p", "", "q", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "r", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "bundle", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;", "s", "Lkotlin/jvm/functions/Function1;", "onSubTabDeselected", "t", "onSubTabSelected", "u", "onSubTabRemoved", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class StickerSubCategoryAdapter extends BaseQuickAdapter<StickerCategoryModel, DataBindingHolder<LayoutStickerCategorySubBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final StickerUiBundle bundle;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Function1<Integer, Unit> onSubTabDeselected;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Function1<Integer, Unit> onSubTabSelected;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final Function1<Integer, Unit> onSubTabRemoved;

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.StickerSubCategoryAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C12288a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ int f59643f;

        public C12288a(int i) {
            this.f59643f = i;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StickerSubCategoryAdapter.this.onSubTabRemoved.invoke(Integer.valueOf(this.f59643f));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.StickerSubCategoryAdapter$b */
    /* loaded from: classes9.dex */
    public static final class C12289b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ int f59645f;

        public C12289b(int i) {
            this.f59645f = i;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StickerSubCategoryAdapter.this.onSubTabRemoved.invoke(Integer.valueOf(this.f59645f));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public StickerSubCategoryAdapter(@NotNull StickerUiBundle bundle, @NotNull Function1<? super Integer, Unit> onSubTabDeselected, @NotNull Function1<? super Integer, Unit> onSubTabSelected, @NotNull Function1<? super Integer, Unit> onSubTabRemoved) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(onSubTabDeselected, "onSubTabDeselected");
        Intrinsics.checkNotNullParameter(onSubTabSelected, "onSubTabSelected");
        Intrinsics.checkNotNullParameter(onSubTabRemoved, "onSubTabRemoved");
        this.bundle = bundle;
        this.onSubTabDeselected = onSubTabDeselected;
        this.onSubTabSelected = onSubTabSelected;
        this.onSubTabRemoved = onSubTabRemoved;
        ItemClickUtilsKt.setOnDebouncedItemClick$default(this, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.vzm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                StickerSubCategoryAdapter.m47709n(StickerSubCategoryAdapter.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() { // from class: com.sunia.HTREnginev2.wzm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemLongClickListener
            public final boolean onLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                boolean m47710o;
                m47710o = StickerSubCategoryAdapter.m47710o(StickerSubCategoryAdapter.this, baseQuickAdapter, view, i);
                return m47710o;
            }
        });
    }

    /* renamed from: n */
    public static final void m47709n(StickerSubCategoryAdapter this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        this$0.m47711p(i);
    }

    /* renamed from: o */
    public static final boolean m47710o(StickerSubCategoryAdapter this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        return this$0.m47712q(i);
    }

    /* renamed from: p */
    public final void m47711p(int position) {
        StickerCategoryModel selectedMainCategory;
        StickerCategoryModel item = getItem(position);
        if (item == null || (selectedMainCategory = this.bundle.getSelectedMainCategory()) == null) {
            return;
        }
        int selectedSubCategoryIndex = this.bundle.getSelectedSubCategoryIndex(selectedMainCategory);
        this.bundle.selectSubCategory(item);
        int selectedSubCategoryIndex2 = this.bundle.getSelectedSubCategoryIndex(selectedMainCategory);
        this.onSubTabDeselected.invoke(Integer.valueOf(selectedSubCategoryIndex));
        this.onSubTabSelected.invoke(Integer.valueOf(selectedSubCategoryIndex2));
    }

    /* renamed from: q */
    public final boolean m47712q(int position) {
        StickerCategoryModel item = getItem(position);
        if (item == null) {
            return true;
        }
        if (item.getType() == 4) {
            new DeleteMaterialCategoryAction(this.bundle, item).build().doOnNext(new C12288a(position)).subscribe();
        } else {
            new DeleteSubCategoryAction(this.bundle, item).build().doOnNext(new C12289b(position)).subscribe();
        }
        return true;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<LayoutStickerCategorySubBinding> holder, int position, @Nullable StickerCategoryModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        holder.getBinding().setModel(item);
        holder.getBinding().categoryNameButton.setSelected(this.bundle.isSubCategorySelected(item));
        holder.getBinding().executePendingBindings();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<LayoutStickerCategorySubBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        LayoutStickerCategorySubBinding inflate = LayoutStickerCategorySubBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        inflate.categoryNameButton.setGravity(17);
        TintTextView categoryNameButton = inflate.categoryNameButton;
        Intrinsics.checkNotNullExpressionValue(categoryNameButton, "categoryNameButton");
        ViewKt.setLayoutWidth(categoryNameButton, -2);
        return new DataBindingHolder<>(inflate);
    }
}
