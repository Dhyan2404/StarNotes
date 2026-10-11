package com.onyx.galaxy.note.p048ui.adapter;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback;
import com.onyx.galaxy.note.databinding.ItemColorSetBinding;
import com.onyx.galaxy.note.editor.action.colorset.SaveColorSetAction;
import com.onyx.galaxy.note.editor.view.toolbar.ColorView;
import com.onyx.galaxy.note.p048ui.adapter.ColorSetAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\b\u0018\u0000 12\b\u0012\u0004\u0012\u00020\u00020\u00012\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0004R\u00020\u00000\u0003:\u000221B/\u0012\u000e\b\u0002\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b\u0012\u0016\b\u0002\u0010&\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010#¢\u0006\u0004\b/\u00100J&\u0010\n\u001a\u00020\t2\n\u0010\u0005\u001a\u00060\u0004R\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J4\u0010\n\u001a\u00020\t2\n\u0010\u0005\u001a\u00060\u0004R\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00022\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0014J$\u0010\u0013\u001a\u00060\u0004R\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0006H\u0014J\u0010\u0010\u0016\u001a\u00020\t2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014J\u0010\u0010\u0017\u001a\u00020\t2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014J\u0014\u0010\u0019\u001a\u00020\t2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00060\u000bJ\u0016\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0006\u0010\u001c\u001a\u00020\tJ\u0018\u0010 \u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u0006H\u0002R\u001c\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R$\u0010&\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010*\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-¨\u00063"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;", "holder", "", "position", "item", "", "onBindViewHolder", "", "", "payloads", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "viewHolder", "onViewHolderStartDrag", "onViewHolderEndDrag", CouchFieldKey.KEY_COLORS, "updateSelectedPos", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;", "getDragItem", "updateOrder", "Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;", "grid", "color", "r", "Ljava/util/List;", "selectedColors", "Lkotlin/Function1;", "s", "Lkotlin/jvm/functions/Function1;", "onColorSetSelected", "", "t", "J", "duration", "", "u", "F", "shadowRadius", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V", "Companion", "ColorSetItemViewHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nColorSetAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorSetAdapter.kt\ncom/onyx/galaxy/note/ui/adapter/ColorSetAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,156:1\n298#2,2:157\n91#3,14:159\n766#4:173\n857#4,2:174\n1864#4,3:176\n*S KotlinDebug\n*F\n+ 1 ColorSetAdapter.kt\ncom/onyx/galaxy/note/ui/adapter/ColorSetAdapter\n*L\n74#1:157,2\n134#1:159,14\n150#1:173\n150#1:174,2\n151#1:176,3\n*E\n"})
/* loaded from: classes9.dex */
public final class ColorSetAdapter extends BaseQuickAdapter<ColorSetModel, ColorSetItemViewHolder> implements DragTouchCallback.DragAdapter<ColorSetModel> {

    /* renamed from: v */
    @NotNull
    public static final String f61874v = "pay_load_key_selected";

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public List<Integer> selectedColors;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public Function1<? super ColorSetModel, Unit> onColorSetSelected;

    /* renamed from: t, reason: from kotlin metadata */
    public final long duration;

    /* renamed from: u, reason: from kotlin metadata */
    public final float shadowRadius;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\b\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0005H\u0016J\b\u0010\u000b\u001a\u00020\u0003H\u0016R\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "holder", "", "show", "", "showMergePreview", "isCurrentlyActive", "showDragState", "getData", "Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public final class ColorSetItemViewHolder extends RecyclerView.ViewHolder implements DragTouchCallback.DragItem<ColorSetModel> {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemColorSetBinding binding;

        /* renamed from: I */
        public final /* synthetic */ ColorSetAdapter f61881I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ColorSetItemViewHolder(@NotNull ColorSetAdapter colorSetAdapter, ItemColorSetBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f61881I = colorSetAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemColorSetBinding getBinding() {
            return this.binding;
        }

        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragItem
        public void showDragState(@NotNull RecyclerView.ViewHolder holder, boolean isCurrentlyActive) {
            Intrinsics.checkNotNullParameter(holder, "holder");
        }

        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragItem
        public void showMergePreview(@Nullable RecyclerView.ViewHolder holder, boolean show) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragItem
        @NotNull
        public ColorSetModel getData() {
            Object tag = this.itemView.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.colorset.data.ColorSetModel");
            return (ColorSetModel) tag;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ColorSetAdapter() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* renamed from: o */
    public static final void m51247o(ColorSetAdapter this$0, ColorSetModel colorSetModel, View view) {
        Map mapOf;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectedColors = colorSetModel.getColors();
        int itemCount = this$0.getItemCount();
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to("pay_load_key_selected", Boolean.TRUE));
        this$0.notifyItemRangeChanged(0, itemCount, mapOf);
        Function1<? super ColorSetModel, Unit> function1 = this$0.onColorSetSelected;
        if (function1 != null) {
            function1.invoke(colorSetModel);
        }
    }

    /* renamed from: p */
    public static final void m51248p(ColorSetItemViewHolder holder, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(holder, "$holder");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        holder.getBinding().shadowLayout.setShadowRadius(Float.valueOf(floatValue));
        if (floatValue == 0.0f) {
            holder.getBinding().shadowLayout.showShadow(false);
        }
    }

    /* renamed from: q */
    public static final void m51249q(ColorSetItemViewHolder holder, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(holder, "$holder");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        holder.getBinding().shadowLayout.setShadowRadius(Float.valueOf(((Float) animatedValue).floatValue()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragAdapter
    @NotNull
    public DragTouchCallback.DragItem<ColorSetModel> getDragItem(@NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        return (DragTouchCallback.DragItem) viewHolder;
    }

    public final void onViewHolderEndDrag(@Nullable RecyclerView.ViewHolder viewHolder) {
        if (viewHolder == null) {
            return;
        }
        final ColorSetItemViewHolder colorSetItemViewHolder = (ColorSetItemViewHolder) viewHolder;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.shadowRadius, 0.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.t2e
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ColorSetAdapter.m51248p(ColorSetAdapter.ColorSetItemViewHolder.this, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(ofFloat);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.ui.adapter.ColorSetAdapter$onViewHolderEndDrag$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
                ColorSetAdapter.this.notifyDataSetChanged();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
            }
        });
        ofFloat.setDuration(this.duration);
        ofFloat.start();
        updateOrder();
    }

    public final void onViewHolderStartDrag(@Nullable RecyclerView.ViewHolder viewHolder) {
        if (viewHolder == null) {
            return;
        }
        final ColorSetItemViewHolder colorSetItemViewHolder = (ColorSetItemViewHolder) viewHolder;
        colorSetItemViewHolder.getBinding().shadowLayout.showShadow(true);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, this.shadowRadius);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.u2e
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ColorSetAdapter.m51249q(ColorSetAdapter.ColorSetItemViewHolder.this, valueAnimator);
            }
        });
        ofFloat.setDuration(this.duration);
        ofFloat.start();
    }

    /* renamed from: r */
    public final void m51250r(ColorView grid, int color) {
        grid.setColor(color);
    }

    public final void updateOrder() {
        List<ColorSetModel> items = getItems();
        ArrayList arrayList = new ArrayList();
        for (Object obj : items) {
            if (!((ColorSetModel) obj).getPreset()) {
                arrayList.add(obj);
            }
        }
        int i = 0;
        for (Object obj2 : arrayList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            ((ColorSetModel) obj2).setOrderIndex(arrayList.size() - i);
            i = i2;
        }
        RxBaseAction.execute$default(new SaveColorSetAction(arrayList), null, null, null, 7, null);
    }

    public final void updateSelectedPos(@NotNull List<Integer> colors) {
        Map mapOf;
        Intrinsics.checkNotNullParameter(colors, "colors");
        this.selectedColors = colors;
        int itemCount = getItemCount();
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to("pay_load_key_selected", Boolean.TRUE));
        notifyItemRangeChanged(0, itemCount, mapOf);
    }

    public /* synthetic */ ColorSetAdapter(List list, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i & 2) != 0 ? null : function1);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(ColorSetItemViewHolder colorSetItemViewHolder, int i, ColorSetModel colorSetModel, List list) {
        onBindViewHolder2(colorSetItemViewHolder, i, colorSetModel, (List<? extends Object>) list);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public ColorSetItemViewHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemColorSetBinding inflate = ItemColorSetBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new ColorSetItemViewHolder(this, inflate);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull ColorSetItemViewHolder holder, int position, @Nullable final ColorSetModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        ItemColorSetBinding binding = holder.getBinding();
        binding.nameText.setText(item.getName());
        binding.gridLayout.setSelected(Intrinsics.areEqual(item.getColors(), this.selectedColors));
        TintLinearLayout gridLayout = binding.gridLayout;
        Intrinsics.checkNotNullExpressionValue(gridLayout, "gridLayout");
        ViewKt.click$default(gridLayout, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.v2e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ColorSetAdapter.m51247o(ColorSetAdapter.this, item, view);
            }
        }, 1, null);
        ColorView grid1 = binding.grid1;
        Intrinsics.checkNotNullExpressionValue(grid1, "grid1");
        m51250r(grid1, item.getColors().get(0).intValue());
        ColorView grid2 = binding.grid2;
        Intrinsics.checkNotNullExpressionValue(grid2, "grid2");
        m51250r(grid2, item.getColors().get(1).intValue());
        ColorView grid3 = binding.grid3;
        Intrinsics.checkNotNullExpressionValue(grid3, "grid3");
        m51250r(grid3, item.getColors().get(2).intValue());
        ColorView grid4 = binding.grid4;
        Intrinsics.checkNotNullExpressionValue(grid4, "grid4");
        m51250r(grid4, item.getColors().get(3).intValue());
        ColorView grid5 = binding.grid5;
        Intrinsics.checkNotNullExpressionValue(grid5, "grid5");
        m51250r(grid5, item.getColors().get(4).intValue());
        TintImageView ivMenu = binding.ivMenu;
        Intrinsics.checkNotNullExpressionValue(ivMenu, "ivMenu");
        ivMenu.setVisibility(item.getPreset() ? 8 : 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ColorSetAdapter(@NotNull List<Integer> selectedColors, @Nullable Function1<? super ColorSetModel, Unit> function1) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(selectedColors, "selectedColors");
        this.selectedColors = selectedColors;
        this.onColorSetSelected = function1;
        ResManager resManager = ResManager.INSTANCE;
        this.duration = resManager.getInteger(C10651R.integer.list_item_drag_duration);
        this.shadowRadius = resManager.getDimension(C7384R.dimen.dp_12);
    }

    /* renamed from: onBindViewHolder, reason: avoid collision after fix types in other method */
    public void onBindViewHolder2(@NotNull ColorSetItemViewHolder holder, int position, @Nullable ColorSetModel item, @NotNull List<? extends Object> payloads) {
        Object first;
        Boolean bool;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBindViewHolder(holder, position, item);
        }
        first = CollectionsKt___CollectionsKt.first(payloads);
        if (!(first instanceof Map) || (bool = (Boolean) ((Map) first).get("pay_load_key_selected")) == null) {
            return;
        }
        bool.booleanValue();
        holder.getBinding().gridLayout.setSelected(Intrinsics.areEqual(item != null ? item.getColors() : null, this.selectedColors));
    }
}
