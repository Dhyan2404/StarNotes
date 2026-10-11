package com.onyx.galaxy.note.editor.view;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.replicator.counter.model.CounterRecordModel;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.CounterTimeListViewBinding;
import com.onyx.galaxy.note.editor.data.CounterEntry;
import com.onyx.galaxy.note.editor.view.CounterTimeListView;
import com.onyx.galaxy.note.editor.view.adapter.CountUpTimeListPopupAdapter;
import com.onyx.galaxy.note.p048ui.view.ExpandToMaxHeightRecyclerView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010%\u001a\u00020$\u0012\b\u0010'\u001a\u0004\u0018\u00010&¢\u0006\u0004\b(\u0010)J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u000f\u001a\u00020\u0004J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u001dR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0011\u0010\"\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\"\u0010#¨\u0006*"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;", "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "counterEntry", "", "setCounterEntry", "", "visible", "setVisible", "isExpand", "setExpand", "updateData", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "interceptTouchEventIf", "resetState", "d", "c", "Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;", C6999h.f39688c, "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/CountUpTimeListPopupAdapter;", "i", "Lcom/onyx/galaxy/note/editor/view/adapter/CountUpTimeListPopupAdapter;", "adapter", "j", Constants.HASIDCALL_INDEX_SIG, "isVisible", C4921e.f26537n, "l", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "isEnableAutoCollapse", Constants.BOOLEAN_VALUE_SIG, "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attributeSet", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterTimeListView extends TintFrameLayout {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final CountUpTimeListPopupAdapter adapter;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isVisible;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean isExpand;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public CounterEntry counterEntry;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CounterTimeListView(@NotNull final Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<CounterTimeListViewBinding>() { // from class: com.onyx.galaxy.note.editor.view.CounterTimeListView$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CounterTimeListViewBinding invoke() {
                return CounterTimeListViewBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        this.isVisible = true;
        this.isExpand = true;
        addView(getBinding().getRoot());
        Drawable mutate = ThemeUtils.getThemeDrawable(C10651R.drawable.shape_counter_popup_btn_bg).mutate();
        Intrinsics.checkNotNullExpressionValue(mutate, "mutate(...)");
        mutate.setAlpha(13);
        getBinding().tvCollapse.setBackgroundDrawable(mutate);
        m47102d();
        getBinding().rvTimeList.setLayoutManager(new LinearLayoutManager(context, 1, true));
        CountUpTimeListPopupAdapter countUpTimeListPopupAdapter = new CountUpTimeListPopupAdapter();
        this.adapter = countUpTimeListPopupAdapter;
        getBinding().rvTimeList.setAdapter(countUpTimeListPopupAdapter);
        getBinding().rvTimeList.addItemDecoration(new Function0<RecyclerView.ItemDecoration>() { // from class: com.onyx.galaxy.note.editor.view.CounterTimeListView.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RecyclerView.ItemDecoration invoke() {
                return new RecyclerView.ItemDecoration() { // from class: com.onyx.galaxy.note.editor.view.CounterTimeListView.1.1
                    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                    public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
                        Intrinsics.checkNotNullParameter(outRect, "outRect");
                        Intrinsics.checkNotNullParameter(view, "view");
                        Intrinsics.checkNotNullParameter(parent, "parent");
                        Intrinsics.checkNotNullParameter(state, "state");
                        super.getItemOffsets(outRect, view, parent, state);
                        outRect.bottom += ResManager.INSTANCE.getDimens(C7384R.dimen.dp_10);
                    }
                };
            }
        });
        updateData();
    }

    /* renamed from: e */
    public static final void m47100e(CounterTimeListView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.isExpand = !this$0.isExpand;
        this$0.updateData();
    }

    private final CounterTimeListViewBinding getBinding() {
        return (CounterTimeListViewBinding) this.binding.getValue();
    }

    /* renamed from: c */
    public final boolean m47101c(CounterEntry counterEntry) {
        return counterEntry.getEntryState().getCountTimes() > 0 && counterEntry.isCountUp() && counterEntry.hasStart();
    }

    /* renamed from: d */
    public final void m47102d() {
        TintTextView tvCollapse = getBinding().tvCollapse;
        Intrinsics.checkNotNullExpressionValue(tvCollapse, "tvCollapse");
        ViewKt.click$default(tvCollapse, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.cfe
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CounterTimeListView.m47100e(CounterTimeListView.this, view);
            }
        }, 1, null);
    }

    public final boolean interceptTouchEventIf(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ExpandToMaxHeightRecyclerView rvTimeList = getBinding().rvTimeList;
        Intrinsics.checkNotNullExpressionValue(rvTimeList, "rvTimeList");
        return com.onyx.android.sdk.base.extension.ViewKt.globalVisibleRectF(rvTimeList).contains(event.getX(), event.getY());
    }

    public final boolean isEnableAutoCollapse() {
        return this.adapter.getItemCount() > ResManager.INSTANCE.getInteger(C10651R.integer.counter_time_list_max_num);
    }

    /* renamed from: isExpand, reason: from getter */
    public final boolean getIsExpand() {
        return this.isExpand;
    }

    public final void resetState() {
        this.isExpand = true;
    }

    public final void setCounterEntry(@NotNull CounterEntry counterEntry) {
        Intrinsics.checkNotNullParameter(counterEntry, "counterEntry");
        this.counterEntry = counterEntry;
    }

    public final void setExpand(boolean isExpand) {
        this.isExpand = isExpand;
        updateData();
    }

    public final void setVisible(boolean visible) {
        this.isVisible = visible;
        updateData();
    }

    public final void updateData() {
        Object lastOrNull;
        final List<CounterRecordModel.TimeRecord> listOfNotNull;
        CounterEntry counterEntry = this.counterEntry;
        if (counterEntry == null) {
            return;
        }
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(this, m47101c(counterEntry) && this.isVisible);
        getBinding().tvCollapse.setText(this.isExpand ? C10651R.string.counter_time_list_collapse : C10651R.string.counter_time_list_expand);
        if (this.isExpand) {
            listOfNotNull = counterEntry.getEntryRecord().getTimeList();
        } else {
            lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) counterEntry.getEntryRecord().getTimeList());
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(lastOrNull);
        }
        this.adapter.setData(listOfNotNull, this.isExpand ? -1 : counterEntry.getEntryRecord().getTimeList().size() - 1);
        com.onyx.android.sdk.base.extension.ViewKt.postSelf(getBinding().rvTimeList, new Function1<ExpandToMaxHeightRecyclerView, Unit>() { // from class: com.onyx.galaxy.note.editor.view.CounterTimeListView$updateData$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ExpandToMaxHeightRecyclerView expandToMaxHeightRecyclerView) {
                invoke2(expandToMaxHeightRecyclerView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ExpandToMaxHeightRecyclerView it2) {
                int coerceAtLeast;
                Intrinsics.checkNotNullParameter(it2, "it");
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(listOfNotNull.size() - 1, 0);
                it2.scrollToPosition(coerceAtLeast);
            }
        });
    }
}
