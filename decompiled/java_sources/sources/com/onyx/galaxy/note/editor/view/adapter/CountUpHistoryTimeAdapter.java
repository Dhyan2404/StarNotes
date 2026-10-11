package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.counter.model.CounterRecordModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ItemCountUpHistoryTimeListBinding;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0015\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0002R\u0016\u0010\u0017\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0019\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0016¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryTimeAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemCountUpHistoryTimeListBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "", "duration", "", "l", "r", "I", "maxDurationIndex", "s", "minDurationIndex", "", "list", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCountUpHistoryTimeAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CountUpHistoryTimeAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryTimeAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n1045#2:89\n*S KotlinDebug\n*F\n+ 1 CountUpHistoryTimeAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryTimeAdapter\n*L\n33#1:89\n*E\n"})
/* loaded from: classes9.dex */
public final class CountUpHistoryTimeAdapter extends BaseQuickAdapter<CounterRecordModel.TimeRecord, DataBindingHolder<ItemCountUpHistoryTimeListBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    public int maxDurationIndex;

    /* renamed from: s, reason: from kotlin metadata */
    public int minDurationIndex;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CountUpHistoryTimeAdapter(@NotNull List<CounterRecordModel.TimeRecord> list) {
        super(list);
        List sortedWith;
        Object first;
        Object last;
        Intrinsics.checkNotNullParameter(list, "list");
        this.maxDurationIndex = -1;
        this.minDurationIndex = -1;
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new Comparator() { // from class: com.onyx.galaxy.note.editor.view.adapter.CountUpHistoryTimeAdapter$special$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((CounterRecordModel.TimeRecord) t).getDuration()), Long.valueOf(((CounterRecordModel.TimeRecord) t2).getDuration()));
                return compareValues;
            }
        });
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) sortedWith);
        this.minDurationIndex = list.indexOf(first);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) sortedWith);
        this.maxDurationIndex = list.indexOf(last);
    }

    /* renamed from: l */
    public final String m47471l(long duration) {
        return DateTimeUtil.formatDurationSecondExact$default(DateTimeUtil.INSTANCE, duration, false, null, null, 12, null);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemCountUpHistoryTimeListBinding> holder, int position, @Nullable CounterRecordModel.TimeRecord item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        TintTextView tintTextView = holder.getBinding().tvCountName;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.getDefault();
        ResManager resManager = ResManager.INSTANCE;
        String format = String.format(locale, resManager.getStringSafely(C10651R.string.counter_record_time_list_name_format), Arrays.copyOf(new Object[]{Integer.valueOf(position + 1)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintTextView.setText(format);
        if (position == this.maxDurationIndex) {
            TintTextView tintTextView2 = holder.getBinding().tvTotalTime;
            String format2 = String.format(Locale.getDefault(), resManager.getStringSafely(C10651R.string.counter_duration_longest_format), Arrays.copyOf(new Object[]{m47471l(item.getDuration())}, 1));
            Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
            tintTextView2.setText(format2);
            holder.getBinding().tvTotalTime.setTextColor(resManager.getColor(C10651R.color.warning_200));
            return;
        }
        if (position == this.minDurationIndex) {
            TintTextView tintTextView3 = holder.getBinding().tvTotalTime;
            String format3 = String.format(Locale.getDefault(), resManager.getStringSafely(C10651R.string.counter_duration_shortest), Arrays.copyOf(new Object[]{m47471l(item.getDuration())}, 1));
            Intrinsics.checkNotNullExpressionValue(format3, "format(...)");
            tintTextView3.setText(format3);
            holder.getBinding().tvTotalTime.setTextColor(resManager.getColor(C10651R.color.succeed_200));
            return;
        }
        holder.getBinding().tvTotalTime.setText(m47471l(item.getDuration()));
        holder.getBinding().tvTotalTime.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_play_icon_color));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemCountUpHistoryTimeListBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new DataBindingHolder<>(ItemCountUpHistoryTimeListBinding.inflate(LayoutInflater.from(context), parent, false));
    }
}
