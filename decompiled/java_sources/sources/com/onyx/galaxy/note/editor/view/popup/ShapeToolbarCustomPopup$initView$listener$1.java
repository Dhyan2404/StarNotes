package com.onyx.galaxy.note.editor.view.popup;

import android.animation.ValueAnimator;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.dragswipe.listener.OnItemDragListener;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.galaxy.note.databinding.ItemToolbarCustomBinding;
import com.onyx.galaxy.note.editor.data.ShapeToolbarData;
import com.onyx.galaxy.note.editor.view.adapter.ToolbarEnabledItemAdapter;
import com.onyx.galaxy.note.editor.view.popup.ShapeToolbarCustomPopup;
import com.onyx.galaxy.note.editor.view.popup.ShapeToolbarCustomPopup$initView$listener$1;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J(\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u001a\u0010\r\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\u000e"}, m61528d2 = {"com/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1", "Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;", "onItemDragEnd", "", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "pos", "", "onItemDragMoving", "source", "from", "target", "to", "onItemDragStart", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ShapeToolbarCustomPopup$initView$listener$1 implements OnItemDragListener {

    /* renamed from: a */
    public final /* synthetic */ float f60571a;

    /* renamed from: b */
    public final /* synthetic */ long f60572b;

    /* renamed from: c */
    public final /* synthetic */ ShapeToolbarCustomPopup f60573c;

    public ShapeToolbarCustomPopup$initView$listener$1(float f, long j, ShapeToolbarCustomPopup shapeToolbarCustomPopup) {
        this.f60571a = f;
        this.f60572b = j;
        this.f60573c = shapeToolbarCustomPopup;
    }

    /* renamed from: d */
    public static final void m49505d(DataBindingHolder holder, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(holder, "$holder");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        ((ItemToolbarCustomBinding) holder.getBinding()).shadowLayout.setShadowRadius(Float.valueOf(floatValue));
        if (floatValue == 0.0f) {
            ViewKt.setViewVisibleOrInvisible(((ItemToolbarCustomBinding) holder.getBinding()).vLine, true);
            ((ItemToolbarCustomBinding) holder.getBinding()).shadowLayout.showShadow(false);
        }
    }

    /* renamed from: e */
    public static final void m49506e(ShapeToolbarCustomPopup this$0) {
        ToolbarEnabledItemAdapter m49493o;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m49493o = this$0.m49493o();
        m49493o.notifyDataSetChanged();
    }

    /* renamed from: f */
    public static final void m49507f(DataBindingHolder holder, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(holder, "$holder");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        ((ItemToolbarCustomBinding) holder.getBinding()).shadowLayout.setShadowRadius(Float.valueOf(((Float) animatedValue).floatValue()));
    }

    @Override // com.chad.library.adapter4.dragswipe.listener.OnItemDragListener
    public void onItemDragEnd(@NotNull RecyclerView.ViewHolder viewHolder, int pos) {
        ShapeToolbarData shapeToolbarData;
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        ShapeToolbarCustomPopup shapeToolbarCustomPopup = this.f60573c;
        shapeToolbarData = shapeToolbarCustomPopup.shapeToolbarData;
        shapeToolbarCustomPopup.m49498w(shapeToolbarData);
        final DataBindingHolder dataBindingHolder = (DataBindingHolder) viewHolder;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f60571a, 0.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.omm
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ShapeToolbarCustomPopup$initView$listener$1.m49505d(DataBindingHolder.this, valueAnimator);
            }
        });
        ofFloat.setDuration(this.f60572b);
        ofFloat.start();
        View root = this.f60573c.getBinding().getRoot();
        final ShapeToolbarCustomPopup shapeToolbarCustomPopup2 = this.f60573c;
        root.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.pmm
            @Override // java.lang.Runnable
            public final void run() {
                ShapeToolbarCustomPopup$initView$listener$1.m49506e(ShapeToolbarCustomPopup.this);
            }
        }, this.f60572b);
    }

    @Override // com.chad.library.adapter4.dragswipe.listener.OnItemDragListener
    public void onItemDragMoving(@NotNull RecyclerView.ViewHolder source, int from, @NotNull RecyclerView.ViewHolder target, int to) {
        ShapeToolbarData shapeToolbarData;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        shapeToolbarData = this.f60573c.shapeToolbarData;
        CollectionKt.moveTo(shapeToolbarData.getEnabledList(), from, to);
    }

    @Override // com.chad.library.adapter4.dragswipe.listener.OnItemDragListener
    public void onItemDragStart(@Nullable RecyclerView.ViewHolder viewHolder, int pos) {
        Intrinsics.checkNotNull(viewHolder, "null cannot be cast to non-null type com.chad.library.adapter4.viewholder.DataBindingHolder<com.onyx.galaxy.note.databinding.ItemToolbarCustomBinding>");
        final DataBindingHolder dataBindingHolder = (DataBindingHolder) viewHolder;
        ((ItemToolbarCustomBinding) dataBindingHolder.getBinding()).shadowLayout.showShadow(true);
        ViewKt.setViewVisibleOrInvisible(((ItemToolbarCustomBinding) dataBindingHolder.getBinding()).vLine, false);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, this.f60571a);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.nmm
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ShapeToolbarCustomPopup$initView$listener$1.m49507f(DataBindingHolder.this, valueAnimator);
            }
        });
        ofFloat.setDuration(this.f60572b);
        ofFloat.start();
    }
}
