package com.google.android.flexbox;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.widget.CompoundButtonCompat;
import com.sunia.HTREnginev2.lng;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* renamed from: com.google.android.flexbox.a */
/* loaded from: classes5.dex */
public class C5042a {

    /* renamed from: f */
    public static final int f28832f = 10;

    /* renamed from: g */
    public static final long f28833g = 4294967295L;

    /* renamed from: h */
    public static final /* synthetic */ boolean f28834h = false;

    /* renamed from: a */
    public final lng f28835a;

    /* renamed from: b */
    public boolean[] f28836b;

    /* renamed from: c */
    @Nullable
    public int[] f28837c;

    /* renamed from: d */
    @Nullable
    public long[] f28838d;

    /* renamed from: e */
    @Nullable
    public long[] f28839e;

    /* renamed from: com.google.android.flexbox.a$b */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a */
        public List<FlexLine> f28840a;

        /* renamed from: b */
        public int f28841b;

        /* renamed from: a */
        public void m21881a() {
            this.f28840a = null;
            this.f28841b = 0;
        }
    }

    /* renamed from: com.google.android.flexbox.a$c */
    /* loaded from: classes5.dex */
    public static class c implements Comparable<c> {

        /* renamed from: e */
        public int f28842e;

        /* renamed from: f */
        public int f28843f;

        public c() {
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(@NonNull c another) {
            int i = this.f28843f;
            int i2 = another.f28843f;
            return i != i2 ? i - i2 : this.f28842e - another.f28842e;
        }

        @NonNull
        public String toString() {
            return "Order{order=" + this.f28843f + ", index=" + this.f28842e + '}';
        }
    }

    public C5042a(lng flexContainer) {
        this.f28835a = flexContainer;
    }

    /* renamed from: A */
    public final int m21829A(int widthMeasureSpec, FlexItem flexItem, int padding) {
        lng lngVar = this.f28835a;
        int childWidthMeasureSpec = lngVar.getChildWidthMeasureSpec(widthMeasureSpec, lngVar.getPaddingLeft() + this.f28835a.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + padding, flexItem.getWidth());
        int size = View.MeasureSpec.getSize(childWidthMeasureSpec);
        return size > flexItem.getMaxWidth() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMaxWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec)) : size < flexItem.getMinWidth() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec)) : childWidthMeasureSpec;
    }

    /* renamed from: B */
    public final int m21830B(FlexItem flexItem, boolean isMainHorizontal) {
        return isMainHorizontal ? flexItem.getMarginBottom() : flexItem.getMarginRight();
    }

    /* renamed from: C */
    public final int m21831C(FlexItem flexItem, boolean isMainHorizontal) {
        return isMainHorizontal ? flexItem.getMarginRight() : flexItem.getMarginBottom();
    }

    /* renamed from: D */
    public final int m21832D(FlexItem flexItem, boolean isMainHorizontal) {
        return isMainHorizontal ? flexItem.getMarginTop() : flexItem.getMarginLeft();
    }

    /* renamed from: E */
    public final int m21833E(FlexItem flexItem, boolean isMainHorizontal) {
        return isMainHorizontal ? flexItem.getMarginLeft() : flexItem.getMarginTop();
    }

    /* renamed from: F */
    public final int m21834F(FlexItem flexItem, boolean isMainHorizontal) {
        return isMainHorizontal ? flexItem.getHeight() : flexItem.getWidth();
    }

    /* renamed from: G */
    public final int m21835G(FlexItem flexItem, boolean isMainHorizontal) {
        return isMainHorizontal ? flexItem.getWidth() : flexItem.getHeight();
    }

    /* renamed from: H */
    public final int m21836H(boolean isMainHorizontal) {
        return isMainHorizontal ? this.f28835a.getPaddingBottom() : this.f28835a.getPaddingEnd();
    }

    /* renamed from: I */
    public final int m21837I(boolean isMainHorizontal) {
        return isMainHorizontal ? this.f28835a.getPaddingEnd() : this.f28835a.getPaddingBottom();
    }

    /* renamed from: J */
    public final int m21838J(boolean isMainHorizontal) {
        return isMainHorizontal ? this.f28835a.getPaddingTop() : this.f28835a.getPaddingStart();
    }

    /* renamed from: K */
    public final int m21839K(boolean isMainHorizontal) {
        return isMainHorizontal ? this.f28835a.getPaddingStart() : this.f28835a.getPaddingTop();
    }

    /* renamed from: L */
    public final int m21840L(View view, boolean isMainHorizontal) {
        return isMainHorizontal ? view.getMeasuredHeight() : view.getMeasuredWidth();
    }

    /* renamed from: M */
    public final int m21841M(View view, boolean isMainHorizontal) {
        return isMainHorizontal ? view.getMeasuredWidth() : view.getMeasuredHeight();
    }

    /* renamed from: N */
    public final boolean m21842N(int childIndex, int childCount, FlexLine flexLine) {
        return childIndex == childCount - 1 && flexLine.getItemCountNotGone() != 0;
    }

    /* renamed from: O */
    public boolean m21843O(SparseIntArray orderCache) {
        int flexItemCount = this.f28835a.getFlexItemCount();
        if (orderCache.size() != flexItemCount) {
            return true;
        }
        for (int i = 0; i < flexItemCount; i++) {
            View flexItemAt = this.f28835a.getFlexItemAt(i);
            if (flexItemAt != null && ((FlexItem) flexItemAt.getLayoutParams()).getOrder() != orderCache.get(i)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: P */
    public final boolean m21844P(View view, int mode, int maxSize, int currentLength, int childLength, FlexItem flexItem, int index, int indexInFlexLine, int flexLinesSize) {
        if (this.f28835a.getFlexWrap() == 0) {
            return false;
        }
        if (flexItem.isWrapBefore()) {
            return true;
        }
        if (mode == 0) {
            return false;
        }
        int maxLine = this.f28835a.getMaxLine();
        if (maxLine != -1 && maxLine <= flexLinesSize + 1) {
            return false;
        }
        int decorationLengthMainAxis = this.f28835a.getDecorationLengthMainAxis(view, index, indexInFlexLine);
        if (decorationLengthMainAxis > 0) {
            childLength += decorationLengthMainAxis;
        }
        return maxSize < currentLength + childLength;
    }

    /* renamed from: Q */
    public void m21845Q(View view, FlexLine flexLine, int left, int top, int right, int bottom) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.f28835a.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i = flexLine.f28747g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (this.f28835a.getFlexWrap() == 2) {
                    view.layout(left, (top - i) + view.getMeasuredHeight() + flexItem.getMarginTop(), right, (bottom - i) + view.getMeasuredHeight() + flexItem.getMarginTop());
                    return;
                } else {
                    int i2 = top + i;
                    view.layout(left, (i2 - view.getMeasuredHeight()) - flexItem.getMarginBottom(), right, i2 - flexItem.getMarginBottom());
                    return;
                }
            }
            if (alignItems == 2) {
                int measuredHeight = (((i - view.getMeasuredHeight()) + flexItem.getMarginTop()) - flexItem.getMarginBottom()) / 2;
                if (this.f28835a.getFlexWrap() != 2) {
                    int i3 = top + measuredHeight;
                    view.layout(left, i3, right, view.getMeasuredHeight() + i3);
                    return;
                } else {
                    int i4 = top - measuredHeight;
                    view.layout(left, i4, right, view.getMeasuredHeight() + i4);
                    return;
                }
            }
            if (alignItems == 3) {
                if (this.f28835a.getFlexWrap() != 2) {
                    int max = Math.max(flexLine.f28752l - view.getBaseline(), flexItem.getMarginTop());
                    view.layout(left, top + max, right, bottom + max);
                    return;
                } else {
                    int max2 = Math.max((flexLine.f28752l - view.getMeasuredHeight()) + view.getBaseline(), flexItem.getMarginBottom());
                    view.layout(left, top - max2, right, bottom - max2);
                    return;
                }
            }
            if (alignItems != 4) {
                return;
            }
        }
        if (this.f28835a.getFlexWrap() != 2) {
            view.layout(left, top + flexItem.getMarginTop(), right, bottom + flexItem.getMarginTop());
        } else {
            view.layout(left, top - flexItem.getMarginBottom(), right, bottom - flexItem.getMarginBottom());
        }
    }

    /* renamed from: R */
    public void m21846R(View view, FlexLine flexLine, boolean isRtl, int left, int top, int right, int bottom) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.f28835a.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i = flexLine.f28747g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (isRtl) {
                    view.layout((left - i) + view.getMeasuredWidth() + flexItem.getMarginLeft(), top, (right - i) + view.getMeasuredWidth() + flexItem.getMarginLeft(), bottom);
                    return;
                } else {
                    view.layout(((left + i) - view.getMeasuredWidth()) - flexItem.getMarginRight(), top, ((right + i) - view.getMeasuredWidth()) - flexItem.getMarginRight(), bottom);
                    return;
                }
            }
            if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int measuredWidth = (((i - view.getMeasuredWidth()) + MarginLayoutParamsCompat.getMarginStart(marginLayoutParams)) - MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) / 2;
                if (isRtl) {
                    view.layout(left - measuredWidth, top, right - measuredWidth, bottom);
                    return;
                } else {
                    view.layout(left + measuredWidth, top, right + measuredWidth, bottom);
                    return;
                }
            }
            if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (isRtl) {
            view.layout(left - flexItem.getMarginRight(), top, right - flexItem.getMarginRight(), bottom);
        } else {
            view.layout(left + flexItem.getMarginLeft(), top, right + flexItem.getMarginLeft(), bottom);
        }
    }

    @VisibleForTesting
    /* renamed from: S */
    public long m21847S(int widthMeasureSpec, int heightMeasureSpec) {
        return (widthMeasureSpec & 4294967295L) | (heightMeasureSpec << 32);
    }

    /* renamed from: T */
    public final void m21848T(int widthMeasureSpec, int heightMeasureSpec, FlexLine flexLine, int maxMainSize, int paddingAlongMainAxis, boolean calledRecursively) {
        int i;
        int i2 = flexLine.f28745e;
        float f = flexLine.f28751k;
        float f2 = 0.0f;
        if (f <= 0.0f || maxMainSize > i2) {
            return;
        }
        float f3 = (i2 - maxMainSize) / f;
        flexLine.f28745e = paddingAlongMainAxis + flexLine.f28746f;
        if (!calledRecursively) {
            flexLine.f28747g = Integer.MIN_VALUE;
        }
        int i3 = 0;
        boolean z = false;
        int i4 = 0;
        float f4 = 0.0f;
        while (i3 < flexLine.f28748h) {
            int i5 = flexLine.f28755o + i3;
            View reorderedFlexItemAt = this.f28835a.getReorderedFlexItemAt(i5);
            if (reorderedFlexItemAt != null && reorderedFlexItemAt.getVisibility() != 8) {
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int flexDirection = this.f28835a.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr = this.f28839e;
                    if (jArr != null) {
                        measuredWidth = m21879y(jArr[i5]);
                    }
                    int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr2 = this.f28839e;
                    if (jArr2 != null) {
                        measuredHeight = m21878x(jArr2[i5]);
                    }
                    if (!this.f28836b[i5] && flexItem.getFlexShrink() > 0.0f) {
                        float flexShrink = measuredWidth - (flexItem.getFlexShrink() * f3);
                        if (i3 == flexLine.f28748h - 1) {
                            flexShrink += f4;
                            f4 = 0.0f;
                        }
                        int round = Math.round(flexShrink);
                        if (round < flexItem.getMinWidth()) {
                            round = flexItem.getMinWidth();
                            this.f28836b[i5] = true;
                            flexLine.f28751k -= flexItem.getFlexShrink();
                            z = true;
                        } else {
                            f4 += flexShrink - round;
                            double d = f4;
                            if (d > 1.0d) {
                                round++;
                                f4 -= 1.0f;
                            } else if (d < -1.0d) {
                                round--;
                                f4 += 1.0f;
                            }
                        }
                        int m21880z = m21880z(heightMeasureSpec, flexItem, flexLine.f28753m);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                        reorderedFlexItemAt.measure(makeMeasureSpec, m21880z);
                        int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                        m21854Z(i5, makeMeasureSpec, m21880z, reorderedFlexItemAt);
                        this.f28835a.updateViewCache(i5, reorderedFlexItemAt);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int max = Math.max(i4, measuredHeight + flexItem.getMarginTop() + flexItem.getMarginBottom() + this.f28835a.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    flexLine.f28745e += measuredWidth + flexItem.getMarginLeft() + flexItem.getMarginRight();
                    i = max;
                } else {
                    int measuredHeight3 = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr3 = this.f28839e;
                    if (jArr3 != null) {
                        measuredHeight3 = m21878x(jArr3[i5]);
                    }
                    int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr4 = this.f28839e;
                    if (jArr4 != null) {
                        measuredWidth3 = m21879y(jArr4[i5]);
                    }
                    if (!this.f28836b[i5] && flexItem.getFlexShrink() > f2) {
                        float flexShrink2 = measuredHeight3 - (flexItem.getFlexShrink() * f3);
                        if (i3 == flexLine.f28748h - 1) {
                            flexShrink2 += f4;
                            f4 = f2;
                        }
                        int round2 = Math.round(flexShrink2);
                        if (round2 < flexItem.getMinHeight()) {
                            round2 = flexItem.getMinHeight();
                            this.f28836b[i5] = true;
                            flexLine.f28751k -= flexItem.getFlexShrink();
                            z = true;
                        } else {
                            f4 += flexShrink2 - round2;
                            double d2 = f4;
                            if (d2 > 1.0d) {
                                round2++;
                                f4 -= 1.0f;
                            } else if (d2 < -1.0d) {
                                round2--;
                                f4 += 1.0f;
                            }
                        }
                        int m21829A = m21829A(widthMeasureSpec, flexItem, flexLine.f28753m);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                        reorderedFlexItemAt.measure(m21829A, makeMeasureSpec2);
                        measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight4 = reorderedFlexItemAt.getMeasuredHeight();
                        m21854Z(i5, m21829A, makeMeasureSpec2, reorderedFlexItemAt);
                        this.f28835a.updateViewCache(i5, reorderedFlexItemAt);
                        measuredHeight3 = measuredHeight4;
                    }
                    i = Math.max(i4, measuredWidth3 + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.f28835a.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    flexLine.f28745e += measuredHeight3 + flexItem.getMarginTop() + flexItem.getMarginBottom();
                }
                flexLine.f28747g = Math.max(flexLine.f28747g, i);
                i4 = i;
            }
            i3++;
            f2 = 0.0f;
        }
        if (!z || i2 == flexLine.f28745e) {
            return;
        }
        m21848T(widthMeasureSpec, heightMeasureSpec, flexLine, maxMainSize, paddingAlongMainAxis, true);
    }

    /* renamed from: U */
    public final int[] m21849U(int childCount, List<c> orders, SparseIntArray orderCache) {
        Collections.sort(orders);
        orderCache.clear();
        int[] iArr = new int[childCount];
        int i = 0;
        for (c cVar : orders) {
            int i2 = cVar.f28842e;
            iArr[i] = i2;
            orderCache.append(i2, cVar.f28843f);
            i++;
        }
        return iArr;
    }

    /* renamed from: V */
    public final void m21850V(View view, int crossSize, int index) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((crossSize - flexItem.getMarginLeft()) - flexItem.getMarginRight()) - this.f28835a.getDecorationLengthCrossAxis(view), flexItem.getMinWidth()), flexItem.getMaxWidth());
        long[] jArr = this.f28839e;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? m21878x(jArr[index]) : view.getMeasuredHeight(), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec2, makeMeasureSpec);
        m21854Z(index, makeMeasureSpec2, makeMeasureSpec, view);
        this.f28835a.updateViewCache(index, view);
    }

    /* renamed from: W */
    public final void m21851W(View view, int crossSize, int index) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((crossSize - flexItem.getMarginTop()) - flexItem.getMarginBottom()) - this.f28835a.getDecorationLengthCrossAxis(view), flexItem.getMinHeight()), flexItem.getMaxHeight());
        long[] jArr = this.f28839e;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? m21879y(jArr[index]) : view.getMeasuredWidth(), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec, makeMeasureSpec2);
        m21854Z(index, makeMeasureSpec, makeMeasureSpec2, view);
        this.f28835a.updateViewCache(index, view);
    }

    /* renamed from: X */
    public void m21852X() {
        m21853Y(0);
    }

    /* renamed from: Y */
    public void m21853Y(int fromIndex) {
        View reorderedFlexItemAt;
        if (fromIndex >= this.f28835a.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f28835a.getFlexDirection();
        if (this.f28835a.getAlignItems() != 4) {
            for (FlexLine flexLine : this.f28835a.getFlexLinesInternal()) {
                for (Integer num : flexLine.f28754n) {
                    View reorderedFlexItemAt2 = this.f28835a.getReorderedFlexItemAt(num.intValue());
                    if (flexDirection == 0 || flexDirection == 1) {
                        m21851W(reorderedFlexItemAt2, flexLine.f28747g, num.intValue());
                    } else {
                        if (flexDirection != 2 && flexDirection != 3) {
                            throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                        }
                        m21850V(reorderedFlexItemAt2, flexLine.f28747g, num.intValue());
                    }
                }
            }
            return;
        }
        int[] iArr = this.f28837c;
        List<FlexLine> flexLinesInternal = this.f28835a.getFlexLinesInternal();
        int size = flexLinesInternal.size();
        for (int i = iArr != null ? iArr[fromIndex] : 0; i < size; i++) {
            FlexLine flexLine2 = flexLinesInternal.get(i);
            int i2 = flexLine2.f28748h;
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = flexLine2.f28755o + i3;
                if (i3 < this.f28835a.getFlexItemCount() && (reorderedFlexItemAt = this.f28835a.getReorderedFlexItemAt(i4)) != null && reorderedFlexItemAt.getVisibility() != 8) {
                    FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                    if (flexItem.getAlignSelf() == -1 || flexItem.getAlignSelf() == 4) {
                        if (flexDirection == 0 || flexDirection == 1) {
                            m21851W(reorderedFlexItemAt, flexLine2.f28747g, i4);
                        } else {
                            if (flexDirection != 2 && flexDirection != 3) {
                                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                            }
                            m21850V(reorderedFlexItemAt, flexLine2.f28747g, i4);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: Z */
    public final void m21854Z(int index, int widthMeasureSpec, int heightMeasureSpec, View view) {
        long[] jArr = this.f28838d;
        if (jArr != null) {
            jArr[index] = m21847S(widthMeasureSpec, heightMeasureSpec);
        }
        long[] jArr2 = this.f28839e;
        if (jArr2 != null) {
            jArr2[index] = m21847S(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    /* renamed from: a */
    public final void m21855a(List<FlexLine> flexLines, FlexLine flexLine, int viewIndex, int usedCrossSizeSoFar) {
        flexLine.f28753m = usedCrossSizeSoFar;
        this.f28835a.onNewFlexLineAdded(flexLine);
        flexLine.f28756p = viewIndex;
        flexLines.add(flexLine);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public void m21856b(b bVar, int i, int i2, int i3, int i4, int i5, @Nullable List<FlexLine> list) {
        int i6;
        b bVar2;
        int i7;
        int i8;
        int i9;
        List<FlexLine> list2;
        int i10;
        View view;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18 = i;
        int i19 = i2;
        int i20 = i5;
        boolean isMainAxisDirectionHorizontal = this.f28835a.isMainAxisDirectionHorizontal();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        List<FlexLine> arrayList = list == null ? new ArrayList() : list;
        bVar.f28840a = arrayList;
        int i21 = i20 == -1 ? 1 : 0;
        int m21839K = m21839K(isMainAxisDirectionHorizontal);
        int m21837I = m21837I(isMainAxisDirectionHorizontal);
        int m21838J = m21838J(isMainAxisDirectionHorizontal);
        int m21836H = m21836H(isMainAxisDirectionHorizontal);
        FlexLine flexLine = new FlexLine();
        int i22 = i4;
        flexLine.f28755o = i22;
        int i23 = m21837I + m21839K;
        flexLine.f28745e = i23;
        int flexItemCount = this.f28835a.getFlexItemCount();
        int i24 = i21;
        int i25 = Integer.MIN_VALUE;
        int i26 = 0;
        int i27 = 0;
        int i28 = 0;
        while (true) {
            if (i22 >= flexItemCount) {
                i6 = i27;
                bVar2 = bVar;
                break;
            }
            View reorderedFlexItemAt = this.f28835a.getReorderedFlexItemAt(i22);
            if (reorderedFlexItemAt != null) {
                if (reorderedFlexItemAt.getVisibility() != 8) {
                    if (reorderedFlexItemAt instanceof CompoundButton) {
                        m21876v((CompoundButton) reorderedFlexItemAt);
                    }
                    FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                    int i29 = flexItemCount;
                    if (flexItem.getAlignSelf() == 4) {
                        flexLine.f28754n.add(Integer.valueOf(i22));
                    }
                    int m21835G = m21835G(flexItem, isMainAxisDirectionHorizontal);
                    if (flexItem.getFlexBasisPercent() != -1.0f && mode == 1073741824) {
                        m21835G = Math.round(size * flexItem.getFlexBasisPercent());
                    }
                    if (isMainAxisDirectionHorizontal) {
                        int childWidthMeasureSpec = this.f28835a.getChildWidthMeasureSpec(i18, i23 + m21833E(flexItem, true) + m21831C(flexItem, true), m21835G);
                        i7 = size;
                        i8 = mode;
                        int childHeightMeasureSpec = this.f28835a.getChildHeightMeasureSpec(i19, m21838J + m21836H + m21832D(flexItem, true) + m21830B(flexItem, true) + i26, m21834F(flexItem, true));
                        reorderedFlexItemAt.measure(childWidthMeasureSpec, childHeightMeasureSpec);
                        m21854Z(i22, childWidthMeasureSpec, childHeightMeasureSpec, reorderedFlexItemAt);
                        i9 = childWidthMeasureSpec;
                    } else {
                        i7 = size;
                        i8 = mode;
                        int childWidthMeasureSpec2 = this.f28835a.getChildWidthMeasureSpec(i19, m21838J + m21836H + m21832D(flexItem, false) + m21830B(flexItem, false) + i26, m21834F(flexItem, false));
                        int childHeightMeasureSpec2 = this.f28835a.getChildHeightMeasureSpec(i18, m21833E(flexItem, false) + i23 + m21831C(flexItem, false), m21835G);
                        reorderedFlexItemAt.measure(childWidthMeasureSpec2, childHeightMeasureSpec2);
                        m21854Z(i22, childWidthMeasureSpec2, childHeightMeasureSpec2, reorderedFlexItemAt);
                        i9 = childHeightMeasureSpec2;
                    }
                    this.f28835a.updateViewCache(i22, reorderedFlexItemAt);
                    m21863i(reorderedFlexItemAt, i22);
                    i27 = View.combineMeasuredStates(i27, reorderedFlexItemAt.getMeasuredState());
                    int i30 = i26;
                    int i31 = i23;
                    FlexLine flexLine2 = flexLine;
                    int i32 = i22;
                    list2 = arrayList;
                    int i33 = i9;
                    if (m21844P(reorderedFlexItemAt, i8, i7, flexLine.f28745e, m21831C(flexItem, isMainAxisDirectionHorizontal) + m21841M(reorderedFlexItemAt, isMainAxisDirectionHorizontal) + m21833E(flexItem, isMainAxisDirectionHorizontal), flexItem, i32, i28, arrayList.size())) {
                        if (flexLine2.getItemCountNotGone() > 0) {
                            m21855a(list2, flexLine2, i32 > 0 ? i32 - 1 : 0, i30);
                            i26 = flexLine2.f28747g + i30;
                        } else {
                            i26 = i30;
                        }
                        if (!isMainAxisDirectionHorizontal) {
                            i10 = i2;
                            view = reorderedFlexItemAt;
                            i22 = i32;
                            if (flexItem.getWidth() == -1) {
                                lng lngVar = this.f28835a;
                                view.measure(lngVar.getChildWidthMeasureSpec(i10, lngVar.getPaddingLeft() + this.f28835a.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + i26, flexItem.getWidth()), i33);
                                m21863i(view, i22);
                            }
                        } else if (flexItem.getHeight() == -1) {
                            lng lngVar2 = this.f28835a;
                            i10 = i2;
                            i22 = i32;
                            view = reorderedFlexItemAt;
                            view.measure(i33, lngVar2.getChildHeightMeasureSpec(i10, lngVar2.getPaddingTop() + this.f28835a.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + i26, flexItem.getHeight()));
                            m21863i(view, i22);
                        } else {
                            i10 = i2;
                            view = reorderedFlexItemAt;
                            i22 = i32;
                        }
                        flexLine = new FlexLine();
                        i12 = 1;
                        flexLine.f28748h = 1;
                        i11 = i31;
                        flexLine.f28745e = i11;
                        flexLine.f28755o = i22;
                        i14 = Integer.MIN_VALUE;
                        i13 = 0;
                    } else {
                        i10 = i2;
                        view = reorderedFlexItemAt;
                        i22 = i32;
                        flexLine = flexLine2;
                        i11 = i31;
                        i12 = 1;
                        flexLine.f28748h++;
                        i13 = i28 + 1;
                        i26 = i30;
                        i14 = i25;
                    }
                    flexLine.f28757q = (flexLine.f28757q ? 1 : 0) | (flexItem.getFlexGrow() != 0.0f ? i12 : 0);
                    flexLine.f28758r = (flexLine.f28758r ? 1 : 0) | (flexItem.getFlexShrink() != 0.0f ? i12 : 0);
                    int[] iArr = this.f28837c;
                    if (iArr != null) {
                        iArr[i22] = list2.size();
                    }
                    flexLine.f28745e += m21841M(view, isMainAxisDirectionHorizontal) + m21833E(flexItem, isMainAxisDirectionHorizontal) + m21831C(flexItem, isMainAxisDirectionHorizontal);
                    flexLine.f28750j += flexItem.getFlexGrow();
                    flexLine.f28751k += flexItem.getFlexShrink();
                    this.f28835a.onNewFlexItemAdded(view, i22, i13, flexLine);
                    int max = Math.max(i14, m21840L(view, isMainAxisDirectionHorizontal) + m21832D(flexItem, isMainAxisDirectionHorizontal) + m21830B(flexItem, isMainAxisDirectionHorizontal) + this.f28835a.getDecorationLengthCrossAxis(view));
                    flexLine.f28747g = Math.max(flexLine.f28747g, max);
                    if (isMainAxisDirectionHorizontal) {
                        if (this.f28835a.getFlexWrap() != 2) {
                            flexLine.f28752l = Math.max(flexLine.f28752l, view.getBaseline() + flexItem.getMarginTop());
                        } else {
                            flexLine.f28752l = Math.max(flexLine.f28752l, (view.getMeasuredHeight() - view.getBaseline()) + flexItem.getMarginBottom());
                        }
                    }
                    i15 = i29;
                    if (m21842N(i22, i15, flexLine)) {
                        m21855a(list2, flexLine, i22, i26);
                        i26 += flexLine.f28747g;
                    }
                    i16 = i5;
                    if (i16 == -1 || list2.size() <= 0 || list2.get(list2.size() - i12).f28756p < i16 || i22 < i16 || i24 != 0) {
                        i17 = i3;
                    } else {
                        i26 = -flexLine.getCrossSize();
                        i17 = i3;
                        i24 = i12;
                    }
                    if (i26 > i17 && i24 != 0) {
                        bVar2 = bVar;
                        i6 = i27;
                        break;
                    }
                    i28 = i13;
                    i25 = max;
                    i22++;
                    i18 = i;
                    flexItemCount = i15;
                    i19 = i10;
                    i23 = i11;
                    arrayList = list2;
                    size = i7;
                    i20 = i16;
                    mode = i8;
                } else {
                    flexLine.f28749i++;
                    flexLine.f28748h++;
                    if (m21842N(i22, flexItemCount, flexLine)) {
                        m21855a(arrayList, flexLine, i22, i26);
                    }
                }
            } else if (m21842N(i22, flexItemCount, flexLine)) {
                m21855a(arrayList, flexLine, i22, i26);
            }
            i7 = size;
            i8 = mode;
            i10 = i19;
            i16 = i20;
            list2 = arrayList;
            i11 = i23;
            i15 = flexItemCount;
            i22++;
            i18 = i;
            flexItemCount = i15;
            i19 = i10;
            i23 = i11;
            arrayList = list2;
            size = i7;
            i20 = i16;
            mode = i8;
        }
        bVar2.f28841b = i6;
    }

    /* renamed from: c */
    public void m21857c(b result, int widthMeasureSpec, int heightMeasureSpec) {
        m21856b(result, widthMeasureSpec, heightMeasureSpec, Integer.MAX_VALUE, 0, -1, null);
    }

    /* renamed from: d */
    public void m21858d(b result, int widthMeasureSpec, int heightMeasureSpec, int needsCalcAmount, int fromIndex, @Nullable List<FlexLine> existingLines) {
        m21856b(result, widthMeasureSpec, heightMeasureSpec, needsCalcAmount, fromIndex, -1, existingLines);
    }

    /* renamed from: e */
    public void m21859e(b result, int widthMeasureSpec, int heightMeasureSpec, int needsCalcAmount, int toIndex, List<FlexLine> existingLines) {
        m21856b(result, widthMeasureSpec, heightMeasureSpec, needsCalcAmount, 0, toIndex, existingLines);
    }

    /* renamed from: f */
    public void m21860f(b result, int widthMeasureSpec, int heightMeasureSpec) {
        m21856b(result, heightMeasureSpec, widthMeasureSpec, Integer.MAX_VALUE, 0, -1, null);
    }

    /* renamed from: g */
    public void m21861g(b result, int widthMeasureSpec, int heightMeasureSpec, int needsCalcAmount, int fromIndex, @Nullable List<FlexLine> existingLines) {
        m21856b(result, heightMeasureSpec, widthMeasureSpec, needsCalcAmount, fromIndex, -1, existingLines);
    }

    /* renamed from: h */
    public void m21862h(b result, int widthMeasureSpec, int heightMeasureSpec, int needsCalcAmount, int toIndex, List<FlexLine> existingLines) {
        m21856b(result, heightMeasureSpec, widthMeasureSpec, needsCalcAmount, 0, toIndex, existingLines);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0040  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21863i(android.view.View r7, int r8) {
        /*
            r6 = this;
            android.view.ViewGroup$LayoutParams r0 = r7.getLayoutParams()
            com.google.android.flexbox.FlexItem r0 = (com.google.android.flexbox.FlexItem) r0
            int r1 = r7.getMeasuredWidth()
            int r2 = r7.getMeasuredHeight()
            int r3 = r0.getMinWidth()
            r4 = 1
            if (r1 >= r3) goto L1b
            int r1 = r0.getMinWidth()
        L19:
            r3 = r4
            goto L27
        L1b:
            int r3 = r0.getMaxWidth()
            if (r1 <= r3) goto L26
            int r1 = r0.getMaxWidth()
            goto L19
        L26:
            r3 = 0
        L27:
            int r5 = r0.getMinHeight()
            if (r2 >= r5) goto L32
            int r2 = r0.getMinHeight()
            goto L3e
        L32:
            int r5 = r0.getMaxHeight()
            if (r2 <= r5) goto L3d
            int r2 = r0.getMaxHeight()
            goto L3e
        L3d:
            r4 = r3
        L3e:
            if (r4 == 0) goto L55
            r0 = 1073741824(0x40000000, float:2.0)
            int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r0)
            r7.measure(r1, r0)
            r6.m21854Z(r8, r1, r0, r7)
            com.sunia.HTREnginev2.lng r6 = r6.f28835a
            r6.updateViewCache(r8, r7)
        L55:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.C5042a.m21863i(android.view.View, int):void");
    }

    /* renamed from: j */
    public void m21864j(List<FlexLine> flexLines, int fromFlexItem) {
        int i = this.f28837c[fromFlexItem];
        if (i == -1) {
            i = 0;
        }
        if (flexLines.size() > i) {
            flexLines.subList(i, flexLines.size()).clear();
        }
        int[] iArr = this.f28837c;
        int length = iArr.length - 1;
        if (fromFlexItem > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, fromFlexItem, length, -1);
        }
        long[] jArr = this.f28838d;
        int length2 = jArr.length - 1;
        if (fromFlexItem > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, fromFlexItem, length2, 0L);
        }
    }

    /* renamed from: k */
    public final List<FlexLine> m21865k(List<FlexLine> flexLines, int size, int totalCrossSize) {
        int i = (size - totalCrossSize) / 2;
        ArrayList arrayList = new ArrayList();
        FlexLine flexLine = new FlexLine();
        flexLine.f28747g = i;
        int size2 = flexLines.size();
        for (int i2 = 0; i2 < size2; i2++) {
            if (i2 == 0) {
                arrayList.add(flexLine);
            }
            arrayList.add(flexLines.get(i2));
            if (i2 == flexLines.size() - 1) {
                arrayList.add(flexLine);
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: l */
    public final List<c> m21866l(int childCount) {
        ArrayList arrayList = new ArrayList(childCount);
        for (int i = 0; i < childCount; i++) {
            FlexItem flexItem = (FlexItem) this.f28835a.getFlexItemAt(i).getLayoutParams();
            c cVar = new c();
            cVar.f28843f = flexItem.getOrder();
            cVar.f28842e = i;
            arrayList.add(cVar);
        }
        return arrayList;
    }

    /* renamed from: m */
    public int[] m21867m(SparseIntArray orderCache) {
        int flexItemCount = this.f28835a.getFlexItemCount();
        return m21849U(flexItemCount, m21866l(flexItemCount), orderCache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n */
    public int[] m21868n(View viewBeforeAdded, int indexForViewBeforeAdded, ViewGroup.LayoutParams paramsForViewBeforeAdded, SparseIntArray orderCache) {
        int flexItemCount = this.f28835a.getFlexItemCount();
        List<c> m21866l = m21866l(flexItemCount);
        c cVar = new c();
        if (viewBeforeAdded == null || !(paramsForViewBeforeAdded instanceof FlexItem)) {
            cVar.f28843f = 1;
        } else {
            cVar.f28843f = ((FlexItem) paramsForViewBeforeAdded).getOrder();
        }
        if (indexForViewBeforeAdded == -1 || indexForViewBeforeAdded == flexItemCount) {
            cVar.f28842e = flexItemCount;
        } else if (indexForViewBeforeAdded < this.f28835a.getFlexItemCount()) {
            cVar.f28842e = indexForViewBeforeAdded;
            while (indexForViewBeforeAdded < flexItemCount) {
                m21866l.get(indexForViewBeforeAdded).f28842e++;
                indexForViewBeforeAdded++;
            }
        } else {
            cVar.f28842e = flexItemCount;
        }
        m21866l.add(cVar);
        return m21849U(flexItemCount + 1, m21866l, orderCache);
    }

    /* renamed from: o */
    public void m21869o(int widthMeasureSpec, int heightMeasureSpec, int paddingAlongCrossAxis) {
        int i;
        int i2;
        int flexDirection = this.f28835a.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            int mode = View.MeasureSpec.getMode(heightMeasureSpec);
            int size = View.MeasureSpec.getSize(heightMeasureSpec);
            i = mode;
            i2 = size;
        } else {
            if (flexDirection != 2 && flexDirection != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
            }
            i = View.MeasureSpec.getMode(widthMeasureSpec);
            i2 = View.MeasureSpec.getSize(widthMeasureSpec);
        }
        List<FlexLine> flexLinesInternal = this.f28835a.getFlexLinesInternal();
        if (i == 1073741824) {
            int sumOfCrossSize = this.f28835a.getSumOfCrossSize() + paddingAlongCrossAxis;
            int i3 = 0;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).f28747g = i2 - paddingAlongCrossAxis;
                return;
            }
            if (flexLinesInternal.size() >= 2) {
                int alignContent = this.f28835a.getAlignContent();
                if (alignContent == 1) {
                    FlexLine flexLine = new FlexLine();
                    flexLine.f28747g = i2 - sumOfCrossSize;
                    flexLinesInternal.add(0, flexLine);
                    return;
                }
                if (alignContent == 2) {
                    this.f28835a.setFlexLines(m21865k(flexLinesInternal, i2, sumOfCrossSize));
                    return;
                }
                if (alignContent == 3) {
                    if (sumOfCrossSize >= i2) {
                        return;
                    }
                    float size2 = (i2 - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                    ArrayList arrayList = new ArrayList();
                    int size3 = flexLinesInternal.size();
                    float f = 0.0f;
                    while (i3 < size3) {
                        arrayList.add(flexLinesInternal.get(i3));
                        if (i3 != flexLinesInternal.size() - 1) {
                            FlexLine flexLine2 = new FlexLine();
                            if (i3 == flexLinesInternal.size() - 2) {
                                flexLine2.f28747g = Math.round(f + size2);
                                f = 0.0f;
                            } else {
                                flexLine2.f28747g = Math.round(size2);
                            }
                            int i4 = flexLine2.f28747g;
                            f += size2 - i4;
                            if (f > 1.0f) {
                                flexLine2.f28747g = i4 + 1;
                                f -= 1.0f;
                            } else if (f < -1.0f) {
                                flexLine2.f28747g = i4 - 1;
                                f += 1.0f;
                            }
                            arrayList.add(flexLine2);
                        }
                        i3++;
                    }
                    this.f28835a.setFlexLines(arrayList);
                    return;
                }
                if (alignContent == 4) {
                    if (sumOfCrossSize >= i2) {
                        this.f28835a.setFlexLines(m21865k(flexLinesInternal, i2, sumOfCrossSize));
                        return;
                    }
                    int size4 = (i2 - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    FlexLine flexLine3 = new FlexLine();
                    flexLine3.f28747g = size4;
                    for (FlexLine flexLine4 : flexLinesInternal) {
                        arrayList2.add(flexLine3);
                        arrayList2.add(flexLine4);
                        arrayList2.add(flexLine3);
                    }
                    this.f28835a.setFlexLines(arrayList2);
                    return;
                }
                if (alignContent == 5 && sumOfCrossSize < i2) {
                    float size5 = (i2 - sumOfCrossSize) / flexLinesInternal.size();
                    int size6 = flexLinesInternal.size();
                    float f2 = 0.0f;
                    while (i3 < size6) {
                        FlexLine flexLine5 = flexLinesInternal.get(i3);
                        float f3 = flexLine5.f28747g + size5;
                        if (i3 == flexLinesInternal.size() - 1) {
                            f3 += f2;
                            f2 = 0.0f;
                        }
                        int round = Math.round(f3);
                        f2 += f3 - round;
                        if (f2 > 1.0f) {
                            round++;
                            f2 -= 1.0f;
                        } else if (f2 < -1.0f) {
                            round--;
                            f2 += 1.0f;
                        }
                        flexLine5.f28747g = round;
                        i3++;
                    }
                }
            }
        }
    }

    /* renamed from: p */
    public void m21870p(int widthMeasureSpec, int heightMeasureSpec) {
        m21871q(widthMeasureSpec, heightMeasureSpec, 0);
    }

    /* renamed from: q */
    public void m21871q(int widthMeasureSpec, int heightMeasureSpec, int fromIndex) {
        int size;
        int paddingLeft;
        int paddingRight;
        m21872r(this.f28835a.getFlexItemCount());
        if (fromIndex >= this.f28835a.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f28835a.getFlexDirection();
        int flexDirection2 = this.f28835a.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(widthMeasureSpec);
            size = View.MeasureSpec.getSize(widthMeasureSpec);
            int largestMainSize = this.f28835a.getLargestMainSize();
            if (mode != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = this.f28835a.getPaddingLeft();
            paddingRight = this.f28835a.getPaddingRight();
        } else {
            if (flexDirection2 != 2 && flexDirection2 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
            }
            int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
            size = View.MeasureSpec.getSize(heightMeasureSpec);
            if (mode2 != 1073741824) {
                size = this.f28835a.getLargestMainSize();
            }
            paddingLeft = this.f28835a.getPaddingTop();
            paddingRight = this.f28835a.getPaddingBottom();
        }
        int i = paddingLeft + paddingRight;
        int[] iArr = this.f28837c;
        List<FlexLine> flexLinesInternal = this.f28835a.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        for (int i2 = iArr != null ? iArr[fromIndex] : 0; i2 < size2; i2++) {
            FlexLine flexLine = flexLinesInternal.get(i2);
            int i3 = flexLine.f28745e;
            if (i3 < size && flexLine.f28757q) {
                m21877w(widthMeasureSpec, heightMeasureSpec, flexLine, size, i, false);
            } else if (i3 > size && flexLine.f28758r) {
                m21848T(widthMeasureSpec, heightMeasureSpec, flexLine, size, i, false);
            }
        }
    }

    /* renamed from: r */
    public final void m21872r(int size) {
        boolean[] zArr = this.f28836b;
        if (zArr == null) {
            this.f28836b = new boolean[Math.max(size, 10)];
        } else if (zArr.length < size) {
            this.f28836b = new boolean[Math.max(zArr.length * 2, size)];
        } else {
            Arrays.fill(zArr, false);
        }
    }

    /* renamed from: s */
    public void m21873s(int size) {
        int[] iArr = this.f28837c;
        if (iArr == null) {
            this.f28837c = new int[Math.max(size, 10)];
        } else if (iArr.length < size) {
            this.f28837c = Arrays.copyOf(this.f28837c, Math.max(iArr.length * 2, size));
        }
    }

    /* renamed from: t */
    public void m21874t(int size) {
        long[] jArr = this.f28838d;
        if (jArr == null) {
            this.f28838d = new long[Math.max(size, 10)];
        } else if (jArr.length < size) {
            this.f28838d = Arrays.copyOf(this.f28838d, Math.max(jArr.length * 2, size));
        }
    }

    /* renamed from: u */
    public void m21875u(int size) {
        long[] jArr = this.f28839e;
        if (jArr == null) {
            this.f28839e = new long[Math.max(size, 10)];
        } else if (jArr.length < size) {
            this.f28839e = Arrays.copyOf(this.f28839e, Math.max(jArr.length * 2, size));
        }
    }

    /* renamed from: v */
    public final void m21876v(CompoundButton compoundButton) {
        FlexItem flexItem = (FlexItem) compoundButton.getLayoutParams();
        int minWidth = flexItem.getMinWidth();
        int minHeight = flexItem.getMinHeight();
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(compoundButton);
        int minimumWidth = buttonDrawable == null ? 0 : buttonDrawable.getMinimumWidth();
        int minimumHeight = buttonDrawable != null ? buttonDrawable.getMinimumHeight() : 0;
        if (minWidth == -1) {
            minWidth = minimumWidth;
        }
        flexItem.setMinWidth(minWidth);
        if (minHeight == -1) {
            minHeight = minimumHeight;
        }
        flexItem.setMinHeight(minHeight);
    }

    /* renamed from: w */
    public final void m21877w(int widthMeasureSpec, int heightMeasureSpec, FlexLine flexLine, int maxMainSize, int paddingAlongMainAxis, boolean calledRecursively) {
        int i;
        int i2;
        int i3;
        double d;
        double d2;
        float f = flexLine.f28750j;
        float f2 = 0.0f;
        if (f <= 0.0f || maxMainSize < (i = flexLine.f28745e)) {
            return;
        }
        float f3 = (maxMainSize - i) / f;
        flexLine.f28745e = paddingAlongMainAxis + flexLine.f28746f;
        if (!calledRecursively) {
            flexLine.f28747g = Integer.MIN_VALUE;
        }
        int i4 = 0;
        boolean z = false;
        int i5 = 0;
        float f4 = 0.0f;
        while (i4 < flexLine.f28748h) {
            int i6 = flexLine.f28755o + i4;
            View reorderedFlexItemAt = this.f28835a.getReorderedFlexItemAt(i6);
            if (reorderedFlexItemAt == null || reorderedFlexItemAt.getVisibility() == 8) {
                i2 = i;
            } else {
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int flexDirection = this.f28835a.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    i2 = i;
                    int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr = this.f28839e;
                    if (jArr != null) {
                        measuredWidth = m21879y(jArr[i6]);
                    }
                    int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr2 = this.f28839e;
                    if (jArr2 != null) {
                        measuredHeight = m21878x(jArr2[i6]);
                    }
                    if (!this.f28836b[i6] && flexItem.getFlexGrow() > 0.0f) {
                        float flexGrow = measuredWidth + (flexItem.getFlexGrow() * f3);
                        if (i4 == flexLine.f28748h - 1) {
                            flexGrow += f4;
                            f4 = 0.0f;
                        }
                        int round = Math.round(flexGrow);
                        if (round > flexItem.getMaxWidth()) {
                            round = flexItem.getMaxWidth();
                            this.f28836b[i6] = true;
                            flexLine.f28750j -= flexItem.getFlexGrow();
                            z = true;
                        } else {
                            f4 += flexGrow - round;
                            double d3 = f4;
                            if (d3 > 1.0d) {
                                round++;
                                d = d3 - 1.0d;
                            } else if (d3 < -1.0d) {
                                round--;
                                d = d3 + 1.0d;
                            }
                            f4 = (float) d;
                        }
                        int m21880z = m21880z(heightMeasureSpec, flexItem, flexLine.f28753m);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                        reorderedFlexItemAt.measure(makeMeasureSpec, m21880z);
                        int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                        m21854Z(i6, makeMeasureSpec, m21880z, reorderedFlexItemAt);
                        this.f28835a.updateViewCache(i6, reorderedFlexItemAt);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int max = Math.max(i5, measuredHeight + flexItem.getMarginTop() + flexItem.getMarginBottom() + this.f28835a.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    flexLine.f28745e += measuredWidth + flexItem.getMarginLeft() + flexItem.getMarginRight();
                    i3 = max;
                } else {
                    int measuredHeight3 = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr3 = this.f28839e;
                    if (jArr3 != null) {
                        measuredHeight3 = m21878x(jArr3[i6]);
                    }
                    int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr4 = this.f28839e;
                    if (jArr4 != null) {
                        measuredWidth3 = m21879y(jArr4[i6]);
                    }
                    if (this.f28836b[i6] || flexItem.getFlexGrow() <= f2) {
                        i2 = i;
                    } else {
                        float flexGrow2 = measuredHeight3 + (flexItem.getFlexGrow() * f3);
                        if (i4 == flexLine.f28748h - 1) {
                            flexGrow2 += f4;
                            f4 = f2;
                        }
                        int round2 = Math.round(flexGrow2);
                        if (round2 > flexItem.getMaxHeight()) {
                            round2 = flexItem.getMaxHeight();
                            this.f28836b[i6] = true;
                            flexLine.f28750j -= flexItem.getFlexGrow();
                            i2 = i;
                            z = true;
                        } else {
                            f4 += flexGrow2 - round2;
                            i2 = i;
                            double d4 = f4;
                            if (d4 > 1.0d) {
                                round2++;
                                d2 = d4 - 1.0d;
                            } else if (d4 < -1.0d) {
                                round2--;
                                d2 = d4 + 1.0d;
                            }
                            f4 = (float) d2;
                        }
                        int m21829A = m21829A(widthMeasureSpec, flexItem, flexLine.f28753m);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                        reorderedFlexItemAt.measure(m21829A, makeMeasureSpec2);
                        measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight4 = reorderedFlexItemAt.getMeasuredHeight();
                        m21854Z(i6, m21829A, makeMeasureSpec2, reorderedFlexItemAt);
                        this.f28835a.updateViewCache(i6, reorderedFlexItemAt);
                        measuredHeight3 = measuredHeight4;
                    }
                    i3 = Math.max(i5, measuredWidth3 + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.f28835a.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    flexLine.f28745e += measuredHeight3 + flexItem.getMarginTop() + flexItem.getMarginBottom();
                }
                flexLine.f28747g = Math.max(flexLine.f28747g, i3);
                i5 = i3;
            }
            i4++;
            i = i2;
            f2 = 0.0f;
        }
        int i7 = i;
        if (!z || i7 == flexLine.f28745e) {
            return;
        }
        m21877w(widthMeasureSpec, heightMeasureSpec, flexLine, maxMainSize, paddingAlongMainAxis, true);
    }

    /* renamed from: x */
    public int m21878x(long longValue) {
        return (int) (longValue >> 32);
    }

    /* renamed from: y */
    public int m21879y(long longValue) {
        return (int) longValue;
    }

    /* renamed from: z */
    public final int m21880z(int heightMeasureSpec, FlexItem flexItem, int padding) {
        lng lngVar = this.f28835a;
        int childHeightMeasureSpec = lngVar.getChildHeightMeasureSpec(heightMeasureSpec, lngVar.getPaddingTop() + this.f28835a.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + padding, flexItem.getHeight());
        int size = View.MeasureSpec.getSize(childHeightMeasureSpec);
        return size > flexItem.getMaxHeight() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMaxHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec)) : size < flexItem.getMinHeight() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec)) : childHeightMeasureSpec;
    }
}
