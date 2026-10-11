package com.onyx.galaxy.note.common.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dB\u001d\b\u0016\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u001c\u0010\u001eB%\b\u0016\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u001f\u001a\u00020\b¢\u0006\u0004\b\u001c\u0010 J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\n\u001a\u00020\u0004J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\bH\u0014J\u0012\u0010\u0010\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0006\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0019\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0016¨\u0006!"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;", "Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;", "", "maxHeight", "", "setMaxHeight", "maxWidth", "setMaxWidth", "", "position", "restoreScrollOffset", "widthSpec", "heightSpec", "onMeasure", "Landroid/util/AttributeSet;", "attrs", "Z0", "a1", "X1", "F", "Y1", "Z1", "I", "savedFirstVisiblePosition", "a2", "savedFirstItemOffset", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ResizableRecyclerView extends TintRecycleView {

    /* renamed from: X1, reason: from kotlin metadata */
    public float maxHeight;

    /* renamed from: Y1, reason: from kotlin metadata */
    public float maxWidth;

    /* renamed from: Z1, reason: from kotlin metadata */
    public int savedFirstVisiblePosition;

    /* renamed from: a2, reason: from kotlin metadata */
    public int savedFirstItemOffset;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ResizableRecyclerView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: Z0 */
    public final void m45181Z0(AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.ResizableRecyclerView);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
            this.maxHeight = obtainStyledAttributes.getDimension(C10651R.styleable.ResizableRecyclerView_maxHeight, 0.0f);
            this.maxWidth = obtainStyledAttributes.getDimension(C10651R.styleable.ResizableRecyclerView_maxWidth, 0.0f);
            obtainStyledAttributes.recycle();
        }
        addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.onyx.galaxy.note.common.view.ResizableRecyclerView$initParams$2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NotNull RecyclerView recyclerView, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                if (newState == 0) {
                    ResizableRecyclerView.this.m45182a1();
                }
            }
        });
    }

    /* renamed from: a1 */
    public final void m45182a1() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        this.savedFirstVisiblePosition = findFirstVisibleItemPosition;
        View findViewByPosition = linearLayoutManager.findViewByPosition(findFirstVisibleItemPosition);
        int i = 0;
        if (linearLayoutManager.getOrientation() == 0) {
            if (findViewByPosition != null) {
                i = findViewByPosition.getLeft();
            }
        } else if (findViewByPosition != null) {
            i = findViewByPosition.getTop();
        }
        this.savedFirstItemOffset = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onMeasure(int widthSpec, int heightSpec) {
        super.onMeasure(widthSpec, heightSpec);
        if (!(this.maxHeight == 0.0f) && getMeasuredHeight() > this.maxHeight) {
            setMeasuredDimension(getMeasuredWidth(), (int) this.maxHeight);
            measureChildren(widthSpec, View.MeasureSpec.makeMeasureSpec((int) this.maxHeight, 1073741824));
            return;
        }
        if (this.maxWidth == 0.0f) {
            return;
        }
        float measuredWidth = getMeasuredWidth();
        float f = this.maxWidth;
        if (measuredWidth > f) {
            setMeasuredDimension((int) f, getMeasuredHeight());
            measureChildren(View.MeasureSpec.makeMeasureSpec((int) this.maxWidth, 1073741824), heightSpec);
        }
    }

    public final void restoreScrollOffset(int position) {
        this.savedFirstVisiblePosition = position;
        restoreScrollOffset();
    }

    public final void setMaxHeight(float maxHeight) {
        this.maxHeight = maxHeight;
        requestLayout();
    }

    public final void setMaxWidth(float maxWidth) {
        this.maxWidth = maxWidth;
        requestLayout();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ResizableRecyclerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ResizableRecyclerView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    public final void restoreScrollOffset() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        ((LinearLayoutManager) layoutManager).scrollToPositionWithOffset(this.savedFirstVisiblePosition, this.savedFirstItemOffset);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResizableRecyclerView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        m45181Z0(attributeSet);
    }

    public /* synthetic */ ResizableRecyclerView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
