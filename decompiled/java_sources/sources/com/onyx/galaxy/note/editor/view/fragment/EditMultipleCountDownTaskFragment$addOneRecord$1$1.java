package com.onyx.galaxy.note.editor.view.fragment;

import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.galaxy.note.databinding.FragmentEditMultipleCountDownBinding;
import com.onyx.galaxy.note.editor.view.adapter.CounterMultipleTimeEditAdapter;
import com.onyx.galaxy.note.p048ui.view.ExpandToMaxHeightRecyclerView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m61528d2 = {"<anonymous>", "", OcrValues.LANG_ITALIAN, "Lcom/onyx/galaxy/note/ui/view/ExpandToMaxHeightRecyclerView;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class EditMultipleCountDownTaskFragment$addOneRecord$1$1 extends Lambda implements Function1<ExpandToMaxHeightRecyclerView, Unit> {
    final /* synthetic */ EditMultipleCountDownTaskFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditMultipleCountDownTaskFragment$addOneRecord$1$1(EditMultipleCountDownTaskFragment editMultipleCountDownTaskFragment) {
        super(1);
        this.this$0 = editMultipleCountDownTaskFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(EditMultipleCountDownTaskFragment this$0) {
        CounterMultipleTimeEditAdapter m48401v0;
        CounterMultipleTimeEditAdapter m48401v02;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m48401v0 = this$0.m48401v0();
        m48401v02 = this$0.m48401v0();
        m48401v0.selectItem(m48401v02.getItemCount() - 1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(ExpandToMaxHeightRecyclerView expandToMaxHeightRecyclerView) {
        invoke2(expandToMaxHeightRecyclerView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull ExpandToMaxHeightRecyclerView it2) {
        FragmentEditMultipleCountDownBinding m48402w0;
        CounterMultipleTimeEditAdapter m48401v0;
        FragmentEditMultipleCountDownBinding m48402w02;
        Intrinsics.checkNotNullParameter(it2, "it");
        m48402w0 = this.this$0.m48402w0();
        ExpandToMaxHeightRecyclerView expandToMaxHeightRecyclerView = m48402w0.rvTaskTimeList;
        m48401v0 = this.this$0.m48401v0();
        expandToMaxHeightRecyclerView.scrollToPosition(m48401v0.getItemCount() - 1);
        m48402w02 = this.this$0.m48402w0();
        ExpandToMaxHeightRecyclerView expandToMaxHeightRecyclerView2 = m48402w02.rvTaskTimeList;
        final EditMultipleCountDownTaskFragment editMultipleCountDownTaskFragment = this.this$0;
        expandToMaxHeightRecyclerView2.postOnAnimationDelayed(new Runnable() { // from class: com.onyx.galaxy.note.editor.view.fragment.a
            @Override // java.lang.Runnable
            public final void run() {
                EditMultipleCountDownTaskFragment$addOneRecord$1$1.invoke$lambda$0(EditMultipleCountDownTaskFragment.this);
            }
        }, 0L);
    }
}
