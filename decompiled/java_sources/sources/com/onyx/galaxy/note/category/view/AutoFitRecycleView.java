package com.onyx.galaxy.note.category.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.theme.widgets.Tintable;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.NoteDisplayType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 92\u00020\u00012\u00020\u0002:\u00019B\u0011\b\u0016\u0012\u0006\u00103\u001a\u000202¢\u0006\u0004\b4\u00105B\u001d\b\u0016\u0012\u0006\u00103\u001a\u000202\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b4\u00106B%\b\u0016\u0012\u0006\u00103\u001a\u000202\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\u0006\u00107\u001a\u00020\t¢\u0006\u0004\b4\u00108J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003J(\u0010\u000e\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tH\u0015J\u0018\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tH\u0014J\u0006\u0010\u0012\u001a\u00020\tJ\u000e\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\tJ\u000e\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018J\b\u0010\u001b\u001a\u00020\u0005H\u0016J\u0012\u0010\u001e\u001a\u00020\u00052\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002J\b\u0010\u001f\u001a\u00020\u0005H\u0002J\b\u0010 \u001a\u00020\u0005H\u0002R\u0016\u0010#\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010&\u001a\u00020\t8\u0002X\u0082D¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010\u0007\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010(R\u0016\u0010+\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010(R\u0016\u0010-\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010%R\u0016\u0010/\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010\"R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101¨\u0006:"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;", "Landroidx/recyclerview/widget/RecyclerView;", "Lcom/onyx/android/sdk/theme/widgets/Tintable;", "", "itemWidthLarge", "", "setItemWidthLarge", "itemWidthSmall", "setItemWidthSmall", "", "w", C6999h.f39688c, "oldw", "oldh", "onSizeChanged", "widthSpec", "heightSpec", "onMeasure", "getSpanCount", "", "autoFit", "setAutoFitSpanCount", "count", "setSpanCount", "Lcom/onyx/galaxy/note/category/data/NoteDisplayType;", "displayType", "setDisplayType", "tint", "Landroid/util/AttributeSet;", "attrs", "a1", "b1", "Z0", "W1", Constants.HASIDCALL_INDEX_SIG, "autoFitSpanCount", "X1", "I", "defaultSpanCount", "Y1", "F", "Z1", "a2", Constant.PADDING_TAG, "b2", "sizeChangeKey", "c2", "isPadUi", "d2", "Lcom/onyx/galaxy/note/category/data/NoteDisplayType;", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AutoFitRecycleView extends RecyclerView implements Tintable {
    public static final int DEFAULT_SPAN_COUNT = 1;
    public static final float DEFAULT_SPAN_SMALL = 60.0f;
    public static final float DEFAULT_WIDTH_LARGE = 120.0f;
    public static final long SIZE_CHANGE_TIME_DELAY = 600;

    /* renamed from: W1, reason: from kotlin metadata */
    public boolean autoFitSpanCount;

    /* renamed from: X1, reason: from kotlin metadata */
    public final int defaultSpanCount;

    /* renamed from: Y1, reason: from kotlin metadata */
    public float itemWidthLarge;

    /* renamed from: Z1, reason: from kotlin metadata */
    public float itemWidthSmall;

    /* renamed from: a2, reason: from kotlin metadata */
    public float padding;

    /* renamed from: b2, reason: from kotlin metadata */
    public int sizeChangeKey;

    /* renamed from: c2, reason: from kotlin metadata */
    public boolean isPadUi;

    /* renamed from: d2, reason: from kotlin metadata */
    @NotNull
    public NoteDisplayType displayType;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AutoFitRecycleView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: Z0 */
    public final void m43914Z0() {
        int coerceAtLeast;
        if (this.autoFitSpanCount) {
            RecyclerView.LayoutManager layoutManager = getLayoutManager();
            Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            if (this.displayType == NoteDisplayType.DISPLAY_LIST) {
                gridLayoutManager.setSpanCount(1);
                return;
            }
            int spanCount = getSpanCount();
            if (spanCount != gridLayoutManager.getSpanCount()) {
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(spanCount, 1);
                gridLayoutManager.setSpanCount(coerceAtLeast);
            }
        }
    }

    /* renamed from: a1 */
    public final void m43915a1(AttributeSet attrs) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.AutoFitRecycleView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.itemWidthLarge = obtainStyledAttributes.getDimension(C10651R.styleable.AutoFitRecycleView_widthLarge, 120.0f);
        this.itemWidthSmall = obtainStyledAttributes.getDimension(C10651R.styleable.AutoFitRecycleView_widthSmall, 60.0f);
        this.padding = obtainStyledAttributes.getDimension(C10651R.styleable.AutoFitRecycleView_padding, getContext().getResources().getDimension(C10651R.dimen.note_display_grid_item_padding));
        obtainStyledAttributes.recycle();
        m43916b1();
    }

    /* renamed from: b1 */
    public final void m43916b1() {
        setLayoutManager(new GridLayoutManager(getContext(), this.defaultSpanCount));
    }

    public final int getSpanCount() {
        return getMeasuredWidth() / ((int) ((this.isPadUi ? this.itemWidthLarge : this.itemWidthSmall) + this.padding));
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onMeasure(int widthSpec, int heightSpec) {
        super.onMeasure(widthSpec, heightSpec);
        m43914Z0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    @SuppressLint({"NotifyDataSetChanged"})
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        if (oldw != w) {
            RxTimerUtil rxTimerUtil = RxTimerUtil.INSTANCE;
            rxTimerUtil.cancel(this.sizeChangeKey);
            this.sizeChangeKey = rxTimerUtil.timer(600L, TimeUnit.MILLISECONDS, new Function1<Long, Unit>() { // from class: com.onyx.galaxy.note.category.view.AutoFitRecycleView$onSizeChanged$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                    invoke(l.longValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(long j) {
                    AutoFitRecycleView.this.m43914Z0();
                    RecyclerView.Adapter adapter = AutoFitRecycleView.this.getAdapter();
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                    }
                }
            });
        }
    }

    public final void setAutoFitSpanCount(boolean autoFit) {
        this.autoFitSpanCount = autoFit;
    }

    public final void setDisplayType(@NotNull NoteDisplayType displayType) {
        Intrinsics.checkNotNullParameter(displayType, "displayType");
        this.displayType = displayType;
        m43914Z0();
    }

    public final void setItemWidthLarge(float itemWidthLarge) {
        if (itemWidthLarge > 0.0f) {
            this.itemWidthLarge = itemWidthLarge;
        }
    }

    public final void setItemWidthSmall(float itemWidthSmall) {
        if (itemWidthSmall > 0.0f) {
            this.itemWidthSmall = itemWidthSmall;
        }
    }

    public final void setSpanCount(int count) {
        this.autoFitSpanCount = false;
        GridLayoutManager gridLayoutManager = (GridLayoutManager) getLayoutManager();
        if (gridLayoutManager == null || gridLayoutManager.getSpanCount() == count) {
            return;
        }
        gridLayoutManager.setSpanCount(count);
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter != null) {
            adapter.notifyItemRangeChanged(0, adapter.getItemCount());
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AutoFitRecycleView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ AutoFitRecycleView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AutoFitRecycleView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.autoFitSpanCount = true;
        this.defaultSpanCount = 3;
        this.sizeChangeKey = -1;
        this.isPadUi = true;
        this.displayType = NoteDisplayType.DISPLAY_GRID;
        m43915a1(attributeSet);
    }

    public /* synthetic */ AutoFitRecycleView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
