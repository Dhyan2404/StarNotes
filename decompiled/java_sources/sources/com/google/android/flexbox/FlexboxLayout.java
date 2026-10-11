package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.flexbox.C5042a;
import com.sunia.HTREnginev2.lng;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
public class FlexboxLayout extends ViewGroup implements lng {
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;

    /* renamed from: e */
    public int f28762e;

    /* renamed from: f */
    public int f28763f;

    /* renamed from: g */
    public int f28764g;

    /* renamed from: h */
    public int f28765h;

    /* renamed from: i */
    public int f28766i;

    /* renamed from: j */
    public int f28767j;

    /* renamed from: k */
    @Nullable
    public Drawable f28768k;

    /* renamed from: l */
    @Nullable
    public Drawable f28769l;

    /* renamed from: m */
    public int f28770m;

    /* renamed from: n */
    public int f28771n;

    /* renamed from: o */
    public int f28772o;

    /* renamed from: p */
    public int f28773p;

    /* renamed from: q */
    public int[] f28774q;

    /* renamed from: r */
    public SparseIntArray f28775r;

    /* renamed from: s */
    public C5042a f28776s;

    /* renamed from: t */
    public List<FlexLine> f28777t;

    /* renamed from: u */
    public C5042a.b f28778u;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface DividerMode {
    }

    public FlexboxLayout(Context context) {
        this(context, null);
    }

    /* renamed from: a */
    public final boolean m21705a(int flexLineIndex) {
        for (int i = 0; i < flexLineIndex; i++) {
            if (this.f28777t.get(i).getItemCountNotGone() > 0) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        if (this.f28775r == null) {
            this.f28775r = new SparseIntArray(getChildCount());
        }
        this.f28774q = this.f28776s.m21868n(child, index, params, this.f28775r);
        super.addView(child, index, params);
    }

    /* renamed from: b */
    public final boolean m21706b(int index, int indexInFlexLine) {
        for (int i = 1; i <= indexInFlexLine; i++) {
            View reorderedChildAt = getReorderedChildAt(index - i);
            if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    public final void m21707c(Canvas canvas, boolean isRtl, boolean fromBottomToTop) {
        int paddingLeft = getPaddingLeft();
        int max = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.f28777t.size();
        for (int i = 0; i < size; i++) {
            FlexLine flexLine = this.f28777t.get(i);
            for (int i2 = 0; i2 < flexLine.f28748h; i2++) {
                int i3 = flexLine.f28755o + i2;
                View reorderedChildAt = getReorderedChildAt(i3);
                if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    if (m21711g(i3, i2)) {
                        m21710f(canvas, isRtl ? reorderedChildAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : (reorderedChildAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f28773p, flexLine.f28742b, flexLine.f28747g);
                    }
                    if (i2 == flexLine.f28748h - 1 && (this.f28771n & 4) > 0) {
                        m21710f(canvas, isRtl ? (reorderedChildAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f28773p : reorderedChildAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, flexLine.f28742b, flexLine.f28747g);
                    }
                }
            }
            if (m21712h(i)) {
                m21709e(canvas, paddingLeft, fromBottomToTop ? flexLine.f28744d : flexLine.f28742b - this.f28772o, max);
            }
            if (m21713i(i) && (this.f28770m & 4) > 0) {
                m21709e(canvas, paddingLeft, fromBottomToTop ? flexLine.f28742b - this.f28772o : flexLine.f28744d, max);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams p) {
        return p instanceof LayoutParams;
    }

    /* renamed from: d */
    public final void m21708d(Canvas canvas, boolean isRtl, boolean fromBottomToTop) {
        int paddingTop = getPaddingTop();
        int max = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.f28777t.size();
        for (int i = 0; i < size; i++) {
            FlexLine flexLine = this.f28777t.get(i);
            for (int i2 = 0; i2 < flexLine.f28748h; i2++) {
                int i3 = flexLine.f28755o + i2;
                View reorderedChildAt = getReorderedChildAt(i3);
                if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    if (m21711g(i3, i2)) {
                        m21709e(canvas, flexLine.f28741a, fromBottomToTop ? reorderedChildAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : (reorderedChildAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f28772o, flexLine.f28747g);
                    }
                    if (i2 == flexLine.f28748h - 1 && (this.f28770m & 4) > 0) {
                        m21709e(canvas, flexLine.f28741a, fromBottomToTop ? (reorderedChildAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f28772o : reorderedChildAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, flexLine.f28747g);
                    }
                }
            }
            if (m21712h(i)) {
                m21710f(canvas, isRtl ? flexLine.f28743c : flexLine.f28741a - this.f28773p, paddingTop, max);
            }
            if (m21713i(i) && (this.f28771n & 4) > 0) {
                m21710f(canvas, isRtl ? flexLine.f28741a - this.f28773p : flexLine.f28743c, paddingTop, max);
            }
        }
    }

    /* renamed from: e */
    public final void m21709e(Canvas canvas, int left, int top, int length) {
        Drawable drawable = this.f28768k;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(left, top, length + left, this.f28772o + top);
        this.f28768k.draw(canvas);
    }

    /* renamed from: f */
    public final void m21710f(Canvas canvas, int left, int top, int length) {
        Drawable drawable = this.f28769l;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(left, top, this.f28773p + left, length + top);
        this.f28769l.draw(canvas);
    }

    /* renamed from: g */
    public final boolean m21711g(int index, int indexInFlexLine) {
        return m21706b(index, indexInFlexLine) ? isMainAxisDirectionHorizontal() ? (this.f28771n & 1) != 0 : (this.f28770m & 1) != 0 : isMainAxisDirectionHorizontal() ? (this.f28771n & 2) != 0 : (this.f28770m & 2) != 0;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getAlignContent() {
        return this.f28766i;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getAlignItems() {
        return this.f28765h;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getChildHeightMeasureSpec(int heightSpec, int padding, int childDimension) {
        return ViewGroup.getChildMeasureSpec(heightSpec, padding, childDimension);
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getChildWidthMeasureSpec(int widthSpec, int padding, int childDimension) {
        return ViewGroup.getChildMeasureSpec(widthSpec, padding, childDimension);
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getDecorationLengthCrossAxis(View view) {
        return 0;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getDecorationLengthMainAxis(View view, int index, int indexInFlexLine) {
        int i;
        int i2;
        if (isMainAxisDirectionHorizontal()) {
            i = m21711g(index, indexInFlexLine) ? 0 + this.f28773p : 0;
            if ((this.f28771n & 4) <= 0) {
                return i;
            }
            i2 = this.f28773p;
        } else {
            i = m21711g(index, indexInFlexLine) ? 0 + this.f28772o : 0;
            if ((this.f28770m & 4) <= 0) {
                return i;
            }
            i2 = this.f28772o;
        }
        return i + i2;
    }

    @Nullable
    public Drawable getDividerDrawableHorizontal() {
        return this.f28768k;
    }

    @Nullable
    public Drawable getDividerDrawableVertical() {
        return this.f28769l;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getFlexDirection() {
        return this.f28762e;
    }

    @Override // com.sunia.HTREnginev2.lng
    public View getFlexItemAt(int index) {
        return getChildAt(index);
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getFlexItemCount() {
        return getChildCount();
    }

    @Override // com.sunia.HTREnginev2.lng
    public List<FlexLine> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.f28777t.size());
        for (FlexLine flexLine : this.f28777t) {
            if (flexLine.getItemCountNotGone() != 0) {
                arrayList.add(flexLine);
            }
        }
        return arrayList;
    }

    @Override // com.sunia.HTREnginev2.lng
    public List<FlexLine> getFlexLinesInternal() {
        return this.f28777t;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getFlexWrap() {
        return this.f28763f;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getJustifyContent() {
        return this.f28764g;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getLargestMainSize() {
        Iterator<FlexLine> it2 = this.f28777t.iterator();
        int i = Integer.MIN_VALUE;
        while (it2.hasNext()) {
            i = Math.max(i, it2.next().f28745e);
        }
        return i;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getMaxLine() {
        return this.f28767j;
    }

    public View getReorderedChildAt(int index) {
        if (index < 0) {
            return null;
        }
        int[] iArr = this.f28774q;
        if (index >= iArr.length) {
            return null;
        }
        return getChildAt(iArr[index]);
    }

    @Override // com.sunia.HTREnginev2.lng
    public View getReorderedFlexItemAt(int index) {
        return getReorderedChildAt(index);
    }

    public int getShowDividerHorizontal() {
        return this.f28770m;
    }

    public int getShowDividerVertical() {
        return this.f28771n;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getSumOfCrossSize() {
        int size = this.f28777t.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            FlexLine flexLine = this.f28777t.get(i2);
            if (m21712h(i2)) {
                i += isMainAxisDirectionHorizontal() ? this.f28772o : this.f28773p;
            }
            if (m21713i(i2)) {
                i += isMainAxisDirectionHorizontal() ? this.f28772o : this.f28773p;
            }
            i += flexLine.f28747g;
        }
        return i;
    }

    /* renamed from: h */
    public final boolean m21712h(int flexLineIndex) {
        if (flexLineIndex < 0 || flexLineIndex >= this.f28777t.size()) {
            return false;
        }
        return m21705a(flexLineIndex) ? isMainAxisDirectionHorizontal() ? (this.f28770m & 1) != 0 : (this.f28771n & 1) != 0 : isMainAxisDirectionHorizontal() ? (this.f28770m & 2) != 0 : (this.f28771n & 2) != 0;
    }

    /* renamed from: i */
    public final boolean m21713i(int flexLineIndex) {
        if (flexLineIndex < 0 || flexLineIndex >= this.f28777t.size()) {
            return false;
        }
        for (int i = flexLineIndex + 1; i < this.f28777t.size(); i++) {
            if (this.f28777t.get(i).getItemCountNotGone() > 0) {
                return false;
            }
        }
        return isMainAxisDirectionHorizontal() ? (this.f28770m & 4) != 0 : (this.f28771n & 4) != 0;
    }

    @Override // com.sunia.HTREnginev2.lng
    public boolean isMainAxisDirectionHorizontal() {
        int i = this.f28762e;
        return i == 0 || i == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x018d  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21714j(boolean r29, int r30, int r31, int r32, int r33) {
        /*
            Method dump skipped, instructions count: 557
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayout.m21714j(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0185  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21715k(boolean r30, boolean r31, int r32, int r33, int r34, int r35) {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayout.m21715k(boolean, boolean, int, int, int, int):void");
    }

    /* renamed from: l */
    public final void m21716l(int widthMeasureSpec, int heightMeasureSpec) {
        this.f28777t.clear();
        this.f28778u.m21881a();
        this.f28776s.m21857c(this.f28778u, widthMeasureSpec, heightMeasureSpec);
        this.f28777t = this.f28778u.f28840a;
        this.f28776s.m21870p(widthMeasureSpec, heightMeasureSpec);
        if (this.f28765h == 3) {
            for (FlexLine flexLine : this.f28777t) {
                int i = Integer.MIN_VALUE;
                for (int i2 = 0; i2 < flexLine.f28748h; i2++) {
                    View reorderedChildAt = getReorderedChildAt(flexLine.f28755o + i2);
                    if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                        LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                        i = this.f28763f != 2 ? Math.max(i, reorderedChildAt.getMeasuredHeight() + Math.max(flexLine.f28752l - reorderedChildAt.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) : Math.max(i, reorderedChildAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + Math.max((flexLine.f28752l - reorderedChildAt.getMeasuredHeight()) + reorderedChildAt.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
                    }
                }
                flexLine.f28747g = i;
            }
        }
        this.f28776s.m21869o(widthMeasureSpec, heightMeasureSpec, getPaddingTop() + getPaddingBottom());
        this.f28776s.m21852X();
        m21718n(this.f28762e, widthMeasureSpec, heightMeasureSpec, this.f28778u.f28841b);
    }

    /* renamed from: m */
    public final void m21717m(int widthMeasureSpec, int heightMeasureSpec) {
        this.f28777t.clear();
        this.f28778u.m21881a();
        this.f28776s.m21860f(this.f28778u, widthMeasureSpec, heightMeasureSpec);
        this.f28777t = this.f28778u.f28840a;
        this.f28776s.m21870p(widthMeasureSpec, heightMeasureSpec);
        this.f28776s.m21869o(widthMeasureSpec, heightMeasureSpec, getPaddingLeft() + getPaddingRight());
        this.f28776s.m21852X();
        m21718n(this.f28762e, widthMeasureSpec, heightMeasureSpec, this.f28778u.f28841b);
    }

    /* renamed from: n */
    public final void m21718n(int flexDirection, int widthMeasureSpec, int heightMeasureSpec, int childState) {
        int sumOfCrossSize;
        int largestMainSize;
        int resolveSizeAndState;
        int resolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        if (flexDirection == 0 || flexDirection == 1) {
            sumOfCrossSize = getSumOfCrossSize() + getPaddingTop() + getPaddingBottom();
            largestMainSize = getLargestMainSize();
        } else {
            if (flexDirection != 2 && flexDirection != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
            }
            sumOfCrossSize = getLargestMainSize();
            largestMainSize = getSumOfCrossSize() + getPaddingLeft() + getPaddingRight();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                childState = View.combineMeasuredStates(childState, 16777216);
            } else {
                size = largestMainSize;
            }
            resolveSizeAndState = View.resolveSizeAndState(size, widthMeasureSpec, childState);
        } else if (mode == 0) {
            resolveSizeAndState = View.resolveSizeAndState(largestMainSize, widthMeasureSpec, childState);
        } else {
            if (mode != 1073741824) {
                throw new IllegalStateException("Unknown width mode is set: " + mode);
            }
            if (size < largestMainSize) {
                childState = View.combineMeasuredStates(childState, 16777216);
            }
            resolveSizeAndState = View.resolveSizeAndState(size, widthMeasureSpec, childState);
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < sumOfCrossSize) {
                childState = View.combineMeasuredStates(childState, 256);
            } else {
                size2 = sumOfCrossSize;
            }
            resolveSizeAndState2 = View.resolveSizeAndState(size2, heightMeasureSpec, childState);
        } else if (mode2 == 0) {
            resolveSizeAndState2 = View.resolveSizeAndState(sumOfCrossSize, heightMeasureSpec, childState);
        } else {
            if (mode2 != 1073741824) {
                throw new IllegalStateException("Unknown height mode is set: " + mode2);
            }
            if (size2 < sumOfCrossSize) {
                childState = View.combineMeasuredStates(childState, 256);
            }
            resolveSizeAndState2 = View.resolveSizeAndState(size2, heightMeasureSpec, childState);
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    /* renamed from: o */
    public final void m21719o() {
        if (this.f28768k == null && this.f28769l == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f28769l == null && this.f28768k == null) {
            return;
        }
        if (this.f28770m == 0 && this.f28771n == 0) {
            return;
        }
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i = this.f28762e;
        if (i == 0) {
            m21707c(canvas, layoutDirection == 1, this.f28763f == 2);
            return;
        }
        if (i == 1) {
            m21707c(canvas, layoutDirection != 1, this.f28763f == 2);
            return;
        }
        if (i == 2) {
            boolean z = layoutDirection == 1;
            if (this.f28763f == 2) {
                z = !z;
            }
            m21708d(canvas, z, false);
            return;
        }
        if (i != 3) {
            return;
        }
        boolean z2 = layoutDirection == 1;
        if (this.f28763f == 2) {
            z2 = !z2;
        }
        m21708d(canvas, z2, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        boolean z;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i = this.f28762e;
        if (i == 0) {
            m21714j(layoutDirection == 1, left, top, right, bottom);
            return;
        }
        if (i == 1) {
            m21714j(layoutDirection != 1, left, top, right, bottom);
            return;
        }
        if (i == 2) {
            z = layoutDirection == 1;
            m21715k(this.f28763f == 2 ? !z : z, false, left, top, right, bottom);
        } else if (i == 3) {
            z = layoutDirection == 1;
            m21715k(this.f28763f == 2 ? !z : z, true, left, top, right, bottom);
        } else {
            throw new IllegalStateException("Invalid flex direction is set: " + this.f28762e);
        }
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.f28775r == null) {
            this.f28775r = new SparseIntArray(getChildCount());
        }
        if (this.f28776s.m21843O(this.f28775r)) {
            this.f28774q = this.f28776s.m21867m(this.f28775r);
        }
        int i = this.f28762e;
        if (i == 0 || i == 1) {
            m21716l(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        if (i == 2 || i == 3) {
            m21717m(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        throw new IllegalStateException("Invalid value for the flex direction is set: " + this.f28762e);
    }

    @Override // com.sunia.HTREnginev2.lng
    public void onNewFlexItemAdded(View view, int index, int indexInFlexLine, FlexLine flexLine) {
        if (m21711g(index, indexInFlexLine)) {
            if (isMainAxisDirectionHorizontal()) {
                int i = flexLine.f28745e;
                int i2 = this.f28773p;
                flexLine.f28745e = i + i2;
                flexLine.f28746f += i2;
                return;
            }
            int i3 = flexLine.f28745e;
            int i4 = this.f28772o;
            flexLine.f28745e = i3 + i4;
            flexLine.f28746f += i4;
        }
    }

    @Override // com.sunia.HTREnginev2.lng
    public void onNewFlexLineAdded(FlexLine flexLine) {
        if (isMainAxisDirectionHorizontal()) {
            if ((this.f28771n & 4) > 0) {
                int i = flexLine.f28745e;
                int i2 = this.f28773p;
                flexLine.f28745e = i + i2;
                flexLine.f28746f += i2;
                return;
            }
            return;
        }
        if ((this.f28770m & 4) > 0) {
            int i3 = flexLine.f28745e;
            int i4 = this.f28772o;
            flexLine.f28745e = i3 + i4;
            flexLine.f28746f += i4;
        }
    }

    @Override // com.sunia.HTREnginev2.lng
    public void setAlignContent(int alignContent) {
        if (this.f28766i != alignContent) {
            this.f28766i = alignContent;
            requestLayout();
        }
    }

    @Override // com.sunia.HTREnginev2.lng
    public void setAlignItems(int alignItems) {
        if (this.f28765h != alignItems) {
            this.f28765h = alignItems;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable divider) {
        setDividerDrawableHorizontal(divider);
        setDividerDrawableVertical(divider);
    }

    public void setDividerDrawableHorizontal(@Nullable Drawable divider) {
        if (divider == this.f28768k) {
            return;
        }
        this.f28768k = divider;
        if (divider != null) {
            this.f28772o = divider.getIntrinsicHeight();
        } else {
            this.f28772o = 0;
        }
        m21719o();
        requestLayout();
    }

    public void setDividerDrawableVertical(@Nullable Drawable divider) {
        if (divider == this.f28769l) {
            return;
        }
        this.f28769l = divider;
        if (divider != null) {
            this.f28773p = divider.getIntrinsicWidth();
        } else {
            this.f28773p = 0;
        }
        m21719o();
        requestLayout();
    }

    @Override // com.sunia.HTREnginev2.lng
    public void setFlexDirection(int flexDirection) {
        if (this.f28762e != flexDirection) {
            this.f28762e = flexDirection;
            requestLayout();
        }
    }

    @Override // com.sunia.HTREnginev2.lng
    public void setFlexLines(List<FlexLine> flexLines) {
        this.f28777t = flexLines;
    }

    @Override // com.sunia.HTREnginev2.lng
    public void setFlexWrap(int flexWrap) {
        if (this.f28763f != flexWrap) {
            this.f28763f = flexWrap;
            requestLayout();
        }
    }

    @Override // com.sunia.HTREnginev2.lng
    public void setJustifyContent(int justifyContent) {
        if (this.f28764g != justifyContent) {
            this.f28764g = justifyContent;
            requestLayout();
        }
    }

    @Override // com.sunia.HTREnginev2.lng
    public void setMaxLine(int maxLine) {
        if (this.f28767j != maxLine) {
            this.f28767j = maxLine;
            requestLayout();
        }
    }

    public void setShowDivider(int dividerMode) {
        setShowDividerVertical(dividerMode);
        setShowDividerHorizontal(dividerMode);
    }

    public void setShowDividerHorizontal(int dividerMode) {
        if (dividerMode != this.f28770m) {
            this.f28770m = dividerMode;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int dividerMode) {
        if (dividerMode != this.f28771n) {
            this.f28771n = dividerMode;
            requestLayout();
        }
    }

    @Override // com.sunia.HTREnginev2.lng
    public void updateViewCache(int position, View view) {
    }

    public FlexboxLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    public FlexboxLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f28767j = -1;
        this.f28776s = new C5042a(this);
        this.f28777t = new ArrayList();
        this.f28778u = new C5042a.b();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C5041R.styleable.FlexboxLayout, defStyleAttr, 0);
        this.f28762e = obtainStyledAttributes.getInt(C5041R.styleable.FlexboxLayout_flexDirection, 0);
        this.f28763f = obtainStyledAttributes.getInt(C5041R.styleable.FlexboxLayout_flexWrap, 0);
        this.f28764g = obtainStyledAttributes.getInt(C5041R.styleable.FlexboxLayout_justifyContent, 0);
        this.f28765h = obtainStyledAttributes.getInt(C5041R.styleable.FlexboxLayout_alignItems, 0);
        this.f28766i = obtainStyledAttributes.getInt(C5041R.styleable.FlexboxLayout_alignContent, 0);
        this.f28767j = obtainStyledAttributes.getInt(C5041R.styleable.FlexboxLayout_maxLine, -1);
        Drawable drawable = obtainStyledAttributes.getDrawable(C5041R.styleable.FlexboxLayout_dividerDrawable);
        if (drawable != null) {
            setDividerDrawableHorizontal(drawable);
            setDividerDrawableVertical(drawable);
        }
        Drawable drawable2 = obtainStyledAttributes.getDrawable(C5041R.styleable.FlexboxLayout_dividerDrawableHorizontal);
        if (drawable2 != null) {
            setDividerDrawableHorizontal(drawable2);
        }
        Drawable drawable3 = obtainStyledAttributes.getDrawable(C5041R.styleable.FlexboxLayout_dividerDrawableVertical);
        if (drawable3 != null) {
            setDividerDrawableVertical(drawable3);
        }
        int i = obtainStyledAttributes.getInt(C5041R.styleable.FlexboxLayout_showDivider, 0);
        if (i != 0) {
            this.f28771n = i;
            this.f28770m = i;
        }
        int i2 = obtainStyledAttributes.getInt(C5041R.styleable.FlexboxLayout_showDividerVertical, 0);
        if (i2 != 0) {
            this.f28771n = i2;
        }
        int i3 = obtainStyledAttributes.getInt(C5041R.styleable.FlexboxLayout_showDividerHorizontal, 0);
        if (i3 != 0) {
            this.f28770m = i3;
        }
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams lp) {
        if (lp instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) lp);
        }
        if (lp instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) lp);
        }
        return new LayoutParams(lp);
    }

    /* loaded from: classes5.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new C5035a();
        private int mAlignSelf;
        private float mFlexBasisPercent;
        private float mFlexGrow;
        private float mFlexShrink;
        private int mMaxHeight;
        private int mMaxWidth;
        private int mMinHeight;
        private int mMinWidth;
        private int mOrder;
        private boolean mWrapBefore;

        /* renamed from: com.google.android.flexbox.FlexboxLayout$LayoutParams$a */
        /* loaded from: classes5.dex */
        public class C5035a implements Parcelable.Creator<LayoutParams> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public LayoutParams createFromParcel(Parcel source) {
                return new LayoutParams(source);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public LayoutParams[] newArray(int size) {
                return new LayoutParams[size];
            }
        }

        public LayoutParams(Context context, AttributeSet attrs) {
            super(context, attrs);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C5041R.styleable.FlexboxLayout_Layout);
            this.mOrder = obtainStyledAttributes.getInt(C5041R.styleable.FlexboxLayout_Layout_layout_order, 1);
            this.mFlexGrow = obtainStyledAttributes.getFloat(C5041R.styleable.FlexboxLayout_Layout_layout_flexGrow, 0.0f);
            this.mFlexShrink = obtainStyledAttributes.getFloat(C5041R.styleable.FlexboxLayout_Layout_layout_flexShrink, 1.0f);
            this.mAlignSelf = obtainStyledAttributes.getInt(C5041R.styleable.FlexboxLayout_Layout_layout_alignSelf, -1);
            this.mFlexBasisPercent = obtainStyledAttributes.getFraction(C5041R.styleable.FlexboxLayout_Layout_layout_flexBasisPercent, 1, 1, -1.0f);
            this.mMinWidth = obtainStyledAttributes.getDimensionPixelSize(C5041R.styleable.FlexboxLayout_Layout_layout_minWidth, -1);
            this.mMinHeight = obtainStyledAttributes.getDimensionPixelSize(C5041R.styleable.FlexboxLayout_Layout_layout_minHeight, -1);
            this.mMaxWidth = obtainStyledAttributes.getDimensionPixelSize(C5041R.styleable.FlexboxLayout_Layout_layout_maxWidth, 16777215);
            this.mMaxHeight = obtainStyledAttributes.getDimensionPixelSize(C5041R.styleable.FlexboxLayout_Layout_layout_maxHeight, 16777215);
            this.mWrapBefore = obtainStyledAttributes.getBoolean(C5041R.styleable.FlexboxLayout_Layout_layout_wrapBefore, false);
            obtainStyledAttributes.recycle();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getAlignSelf() {
            return this.mAlignSelf;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexBasisPercent() {
            return this.mFlexBasisPercent;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexGrow() {
            return this.mFlexGrow;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexShrink() {
            return this.mFlexShrink;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getHeight() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginBottom() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginLeft() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginRight() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginTop() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMaxHeight() {
            return this.mMaxHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMaxWidth() {
            return this.mMaxWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMinHeight() {
            return this.mMinHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMinWidth() {
            return this.mMinWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getOrder() {
            return this.mOrder;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getWidth() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // com.google.android.flexbox.FlexItem
        public boolean isWrapBefore() {
            return this.mWrapBefore;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setAlignSelf(int alignSelf) {
            this.mAlignSelf = alignSelf;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexBasisPercent(float flexBasisPercent) {
            this.mFlexBasisPercent = flexBasisPercent;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexGrow(float flexGrow) {
            this.mFlexGrow = flexGrow;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexShrink(float flexShrink) {
            this.mFlexShrink = flexShrink;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setHeight(int height) {
            ((ViewGroup.MarginLayoutParams) this).height = height;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMaxHeight(int maxHeight) {
            this.mMaxHeight = maxHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMaxWidth(int maxWidth) {
            this.mMaxWidth = maxWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinHeight(int minHeight) {
            this.mMinHeight = minHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinWidth(int minWidth) {
            this.mMinWidth = minWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setOrder(int order) {
            this.mOrder = order;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setWidth(int width) {
            ((ViewGroup.MarginLayoutParams) this).width = width;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setWrapBefore(boolean wrapBefore) {
            this.mWrapBefore = wrapBefore;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mOrder);
            parcel.writeFloat(this.mFlexGrow);
            parcel.writeFloat(this.mFlexShrink);
            parcel.writeInt(this.mAlignSelf);
            parcel.writeFloat(this.mFlexBasisPercent);
            parcel.writeInt(this.mMinWidth);
            parcel.writeInt(this.mMinHeight);
            parcel.writeInt(this.mMaxWidth);
            parcel.writeInt(this.mMaxHeight);
            parcel.writeByte(this.mWrapBefore ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }

        public LayoutParams(LayoutParams source) {
            super((ViewGroup.MarginLayoutParams) source);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            this.mOrder = source.mOrder;
            this.mFlexGrow = source.mFlexGrow;
            this.mFlexShrink = source.mFlexShrink;
            this.mAlignSelf = source.mAlignSelf;
            this.mFlexBasisPercent = source.mFlexBasisPercent;
            this.mMinWidth = source.mMinWidth;
            this.mMinHeight = source.mMinHeight;
            this.mMaxWidth = source.mMaxWidth;
            this.mMaxHeight = source.mMaxHeight;
            this.mWrapBefore = source.mWrapBefore;
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(int width, int height) {
            super(new ViewGroup.LayoutParams(width, height));
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super(source);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(Parcel in) {
            super(0, 0);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            this.mOrder = in.readInt();
            this.mFlexGrow = in.readFloat();
            this.mFlexShrink = in.readFloat();
            this.mAlignSelf = in.readInt();
            this.mFlexBasisPercent = in.readFloat();
            this.mMinWidth = in.readInt();
            this.mMinHeight = in.readInt();
            this.mMaxWidth = in.readInt();
            this.mMaxHeight = in.readInt();
            this.mWrapBefore = in.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = in.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = in.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = in.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = in.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = in.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = in.readInt();
        }
    }
}
