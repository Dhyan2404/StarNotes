package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.galaxy.note.databinding.ItemMyCountDownTaskTimeListBinding;
import com.onyx.galaxy.note.utils.CounterUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0015\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskTimeAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemMyCountDownTaskTimeListBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "", "duration", "", "l", "", "list", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class MyCountDownTaskTimeAdapter extends BaseQuickAdapter<CounterTaskModel.CountTimeSetting, DataBindingHolder<ItemMyCountDownTaskTimeListBinding>> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyCountDownTaskTimeAdapter(@NotNull List<CounterTaskModel.CountTimeSetting> list) {
        super(list);
        Intrinsics.checkNotNullParameter(list, "list");
    }

    /* renamed from: l */
    public final String m47631l(long duration) {
        return DateTimeUtil.formatDurationSecondExact$default(DateTimeUtil.INSTANCE, duration, false, null, null, 12, null);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemMyCountDownTaskTimeListBinding> holder, int position, @Nullable CounterTaskModel.CountTimeSetting item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        holder.getBinding().tvCountName.setText(CounterUtils.INSTANCE.getFormatedSegmentName(getItems(), position));
        holder.getBinding().tvTotalTime.setText(m47631l(item.getDuration()));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemMyCountDownTaskTimeListBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new DataBindingHolder<>(ItemMyCountDownTaskTimeListBinding.inflate(LayoutInflater.from(context), parent, false));
    }
}
