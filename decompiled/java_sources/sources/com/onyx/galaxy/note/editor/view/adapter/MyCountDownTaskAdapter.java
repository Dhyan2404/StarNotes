package com.onyx.galaxy.note.editor.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.counter.data.CounterType;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.databinding.ItemMyCountDownTaskBinding;
import com.onyx.galaxy.note.editor.view.adapter.MyCountDownTaskAdapter;
import com.onyx.galaxy.note.utils.CounterUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010#\n\u0002\b\u0006\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0015J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000bH\u0016J&\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0006H\u0014J\u000e\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006J&\u0010\u0014\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u001e\u0010\u0015\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0002R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00060\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemMyCountDownTaskBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onViewRecycled", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "toggleItemExpandState", "m", GoogleApiAvailabilityLight.f29016b, "", "r", "Ljava/util/Set;", "expandedPositionSet", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class MyCountDownTaskAdapter extends BaseQuickAdapter<CounterTaskModel, DataBindingHolder<ItemMyCountDownTaskBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Set<Integer> expandedPositionSet;

    public MyCountDownTaskAdapter() {
        super(null, 1, null);
        this.expandedPositionSet = new LinkedHashSet();
    }

    /* renamed from: o */
    public static final boolean m47628o(DataBindingHolder holder, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(holder, "$holder");
        return holder.itemView.onTouchEvent(motionEvent);
    }

    /* renamed from: m */
    public final void m47629m(DataBindingHolder<ItemMyCountDownTaskBinding> holder, int position, CounterTaskModel item) {
        TintImageView tintImageView = holder.getBinding().ivExpandFlagArrow;
        int type = item.getType();
        CounterType counterType = CounterType.COUNT_DOWN_MULTIPLE;
        ViewKt.setViewVisibleOrGone(tintImageView, type == counterType.ordinal());
        if (item.getType() != counterType.ordinal()) {
            return;
        }
        if (!this.expandedPositionSet.contains(Integer.valueOf(position))) {
            holder.getBinding().ivExpandFlagArrow.setRotation(0.0f);
            return;
        }
        holder.getBinding().ivExpandFlagArrow.setVisibility(0);
        holder.getBinding().ivExpandFlagArrow.setRotation(180.0f);
        holder.getBinding().rvTaskTimeList.setVisibility(0);
        m47630n(holder, item);
    }

    /* renamed from: n */
    public final void m47630n(DataBindingHolder<ItemMyCountDownTaskBinding> holder, CounterTaskModel item) {
        if (holder.getBinding().rvTaskTimeList.getItemDecorationCount() == 0) {
            holder.getBinding().rvTaskTimeList.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.onyx.galaxy.note.editor.view.adapter.MyCountDownTaskAdapter$bindTimeList$1
                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
                    Intrinsics.checkNotNullParameter(outRect, "outRect");
                    Intrinsics.checkNotNullParameter(view, "view");
                    Intrinsics.checkNotNullParameter(parent, "parent");
                    Intrinsics.checkNotNullParameter(state, "state");
                    super.getItemOffsets(outRect, view, parent, state);
                    outRect.bottom += ResManager.INSTANCE.getDimensionPixelSize(C7384R.dimen.dp_8);
                }
            });
        }
        holder.getBinding().rvTaskTimeList.setLayoutManager(new LinearLayoutManager(holder.itemView.getContext(), 1, false));
        holder.getBinding().rvTaskTimeList.setAdapter(new MyCountDownTaskTimeAdapter(item.getCountList()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        ((RecyclerView) holder.itemView.findViewById(C10651R.id.rv_task_time_list)).setAdapter(null);
        super.onViewRecycled(holder);
    }

    public final void toggleItemExpandState(int position) {
        CounterTaskModel item = getItem(position);
        boolean z = false;
        if (item != null && item.getType() == CounterType.COUNT_DOWN_MULTIPLE.ordinal()) {
            z = true;
        }
        if (z) {
            if (this.expandedPositionSet.contains(Integer.valueOf(position))) {
                this.expandedPositionSet.remove(Integer.valueOf(position));
            } else {
                this.expandedPositionSet.add(Integer.valueOf(position));
            }
            BaseQuickAdapterKt.notifyItemChangedSafety(this, position);
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @SuppressLint({"ClickableViewAccessibility"})
    public void onBindViewHolder(@NotNull final DataBindingHolder<ItemMyCountDownTaskBinding> holder, int position, @Nullable CounterTaskModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        ItemMyCountDownTaskBinding binding = holder.getBinding();
        binding.tvCountName.setText(CounterUtils.INSTANCE.getFormatedTaskName(item));
        binding.tvTotalTime.setText(DateTimeUtil.formatDurationSecondExact$default(DateTimeUtil.INSTANCE, item.getDuration(), false, null, null, 12, null));
        binding.rvTaskTimeList.setVisibility(8);
        m47629m(holder, position, item);
        holder.getBinding().rvTaskTimeList.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.uqj
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m47628o;
                m47628o = MyCountDownTaskAdapter.m47628o(DataBindingHolder.this, view, motionEvent);
                return m47628o;
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemMyCountDownTaskBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new DataBindingHolder<>(ItemMyCountDownTaskBinding.inflate(LayoutInflater.from(context), parent, false));
    }
}
