package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.counter.model.CounterRecordModel;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ItemCountUpPopupTimeListBinding;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u001c\u0010\u0014\u001a\u00020\t2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0006J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0002R\u0016\u0010\u0013\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/CountUpTimeListPopupAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemCountUpPopupTimeListBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "", "list", "singleTimeIndex", "setData", "", "duration", "", "l", "r", "I", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CountUpTimeListPopupAdapter extends BaseQuickAdapter<CounterRecordModel.TimeRecord, DataBindingHolder<ItemCountUpPopupTimeListBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    public int singleTimeIndex;

    public CountUpTimeListPopupAdapter() {
        super(null, 1, null);
        this.singleTimeIndex = -1;
    }

    /* renamed from: l */
    public final String m47472l(long duration) {
        return DateTimeUtil.formatDurationSecondExact$default(DateTimeUtil.INSTANCE, duration, false, null, null, 12, null);
    }

    public final void setData(@NotNull List<CounterRecordModel.TimeRecord> list, int singleTimeIndex) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.singleTimeIndex = singleTimeIndex;
        submitList(list);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemCountUpPopupTimeListBinding> holder, int position, @Nullable CounterRecordModel.TimeRecord item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        int i = this.singleTimeIndex;
        if (i >= 0) {
            position = i;
        }
        TintTextView tintTextView = holder.getBinding().tvCountName;
        String title = item.getTitle();
        if (title == null) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            title = String.format(Locale.getDefault(), ResManager.INSTANCE.getStringSafely(C10651R.string.counter_record_time_list_name_format), Arrays.copyOf(new Object[]{Integer.valueOf(position + 1)}, 1));
            Intrinsics.checkNotNullExpressionValue(title, "format(...)");
        }
        tintTextView.setText(title);
        holder.getBinding().tvTotalTime.setText(m47472l(item.getDuration()));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemCountUpPopupTimeListBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new DataBindingHolder<>(ItemCountUpPopupTimeListBinding.inflate(LayoutInflater.from(context), parent, false));
    }
}
