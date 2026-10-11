package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C5139R;
import com.google.android.material.internal.ViewUtils;
import com.sunia.HTREnginev2.tmd;
import com.sunia.HTREnginev2.yyn;
import java.util.Calendar;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public final class MaterialCalendarGridView extends GridView {

    /* renamed from: e */
    public final Calendar f31095e;

    /* renamed from: f */
    public final boolean f31096f;

    /* renamed from: com.google.android.material.datepicker.MaterialCalendarGridView$a */
    /* loaded from: classes6.dex */
    public class C5248a extends AccessibilityDelegateCompat {
        public C5248a() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(null);
        }
    }

    public MaterialCalendarGridView(Context context) {
        this(context, null);
    }

    /* renamed from: d */
    public static int m23952d(@NonNull View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    /* renamed from: e */
    public static boolean m23953e(@Nullable Long l, @Nullable Long l2, @Nullable Long l3, @Nullable Long l4) {
        return l == null || l2 == null || l3 == null || l4 == null || l3.longValue() > l2.longValue() || l4.longValue() < l.longValue();
    }

    /* renamed from: a */
    public final void m23954a(int i, Rect rect) {
        if (i == 33) {
            setSelection(getAdapter().m24021m());
        } else if (i == 130) {
            setSelection(getAdapter().m24010b());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public C5263b getAdapter2() {
        return (C5263b) super.getAdapter();
    }

    /* renamed from: c */
    public final View m23956c(int i) {
        return getChildAt(i - getFirstVisiblePosition());
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter().notifyDataSetChanged();
    }

    @Override // android.view.View
    public final void onDraw(@NonNull Canvas canvas) {
        int m24009a;
        int m23952d;
        int m24009a2;
        int m23952d2;
        int width;
        int i;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        C5263b adapter = getAdapter();
        DateSelector<?> dateSelector = adapter.f31216f;
        tmd tmdVar = adapter.f31218h;
        int max = Math.max(adapter.m24010b(), getFirstVisiblePosition());
        int min = Math.min(adapter.m24021m(), getLastVisiblePosition());
        Long item = adapter.getItem(max);
        Long item2 = adapter.getItem(min);
        Iterator<Pair<Long, Long>> it2 = dateSelector.getSelectedRanges().iterator();
        while (it2.hasNext()) {
            Pair<Long, Long> next = it2.next();
            Long l = next.first;
            if (l == null) {
                materialCalendarGridView = this;
            } else if (next.second != null) {
                long longValue = l.longValue();
                long longValue2 = next.second.longValue();
                if (!m23953e(item, item2, Long.valueOf(longValue), Long.valueOf(longValue2))) {
                    boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
                    if (longValue < item.longValue()) {
                        m23952d = adapter.m24016h(max) ? 0 : !isLayoutRtl ? materialCalendarGridView.m23956c(max - 1).getRight() : materialCalendarGridView.m23956c(max - 1).getLeft();
                        m24009a = max;
                    } else {
                        materialCalendarGridView.f31095e.setTimeInMillis(longValue);
                        m24009a = adapter.m24009a(materialCalendarGridView.f31095e.get(5));
                        m23952d = m23952d(materialCalendarGridView.m23956c(m24009a));
                    }
                    if (longValue2 > item2.longValue()) {
                        m23952d2 = adapter.m24017i(min) ? getWidth() : !isLayoutRtl ? materialCalendarGridView.m23956c(min).getRight() : materialCalendarGridView.m23956c(min).getLeft();
                        m24009a2 = min;
                    } else {
                        materialCalendarGridView.f31095e.setTimeInMillis(longValue2);
                        m24009a2 = adapter.m24009a(materialCalendarGridView.f31095e.get(5));
                        m23952d2 = m23952d(materialCalendarGridView.m23956c(m24009a2));
                    }
                    int itemId = (int) adapter.getItemId(m24009a);
                    int i2 = max;
                    int i3 = min;
                    int itemId2 = (int) adapter.getItemId(m24009a2);
                    while (itemId <= itemId2) {
                        int numColumns = getNumColumns() * itemId;
                        int numColumns2 = (numColumns + getNumColumns()) - 1;
                        View m23956c = materialCalendarGridView.m23956c(numColumns);
                        int top = m23956c.getTop() + tmdVar.f85481a.m57176e();
                        C5263b c5263b = adapter;
                        int bottom = m23956c.getBottom() - tmdVar.f85481a.m57173b();
                        if (isLayoutRtl) {
                            int i4 = m24009a2 > numColumns2 ? 0 : m23952d2;
                            width = numColumns > m24009a ? getWidth() : m23952d;
                            i = i4;
                        } else {
                            i = numColumns > m24009a ? 0 : m23952d;
                            width = m24009a2 > numColumns2 ? getWidth() : m23952d2;
                        }
                        canvas.drawRect(i, top, width, bottom, tmdVar.f85488h);
                        itemId++;
                        materialCalendarGridView = this;
                        it2 = it2;
                        adapter = c5263b;
                    }
                    materialCalendarGridView = this;
                    max = i2;
                    min = i3;
                }
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        if (z) {
            m23954a(i, rect);
        } else {
            super.onFocusChanged(false, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter().m24010b()) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(getAdapter().m24010b());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        if (!this.f31096f) {
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i) {
        if (i < getAdapter().m24010b()) {
            super.setSelection(getAdapter().m24010b());
        } else {
            super.setSelection(i);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof C5263b) {
            super.setAdapter(listAdapter);
            return;
        }
        throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), C5263b.class.getCanonicalName()));
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f31095e = yyn.m58538x();
        if (MaterialDatePicker.m23958D0(getContext())) {
            setNextFocusLeftId(C5139R.id.cancel_button);
            setNextFocusRightId(C5139R.id.confirm_button);
        }
        this.f31096f = MaterialDatePicker.m23959F0(getContext());
        ViewCompat.setAccessibilityDelegate(this, new C5248a());
    }
}
