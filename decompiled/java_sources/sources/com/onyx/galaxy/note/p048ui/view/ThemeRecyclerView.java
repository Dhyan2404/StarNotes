package com.onyx.galaxy.note.p048ui.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.RecyclerView;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.galaxy.note.p048ui.view.ThemeRecyclerView;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\u0006\u0010\b\u001a\u00020\u0005R\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/ThemeRecyclerView;", "Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;", "Lkotlin/Function0;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", BreakpointSQLiteHelper.f39283i, "", "addItemDecoration", "tint", "removeItemDecorations", "X1", "Lkotlin/jvm/functions/Function0;", "addItemDecorationBlock", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attributeSet", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class ThemeRecyclerView extends TintRecycleView {

    /* renamed from: X1, reason: from kotlin metadata */
    @Nullable
    public Function0<? extends RecyclerView.ItemDecoration> addItemDecorationBlock;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThemeRecyclerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: a1 */
    public static final void m51479a1(ThemeRecyclerView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.removeItemDecorations();
    }

    public final void addItemDecoration(@NotNull Function0<? extends RecyclerView.ItemDecoration> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.addItemDecorationBlock = block;
        removeItemDecorations();
        super.addItemDecoration(block.invoke());
    }

    public final void removeItemDecorations() {
        if (isInLayout()) {
            post(new Runnable() { // from class: com.sunia.HTREnginev2.xgn
                @Override // java.lang.Runnable
                public final void run() {
                    ThemeRecyclerView.m51479a1(ThemeRecyclerView.this);
                }
            });
            return;
        }
        int itemDecorationCount = getItemDecorationCount();
        for (int i = 0; i < itemDecorationCount; i++) {
            RecyclerView.ItemDecoration itemDecorationAt = getItemDecorationAt(i);
            Intrinsics.checkNotNullExpressionValue(itemDecorationAt, "getItemDecorationAt(...)");
            removeItemDecoration(itemDecorationAt);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.TintRecycleView, com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        super.tint();
        Function0<? extends RecyclerView.ItemDecoration> function0 = this.addItemDecorationBlock;
        if (function0 != null) {
            removeItemDecorations();
            super.addItemDecoration(function0.invoke());
        }
        setAdapter(getAdapter());
    }
}
