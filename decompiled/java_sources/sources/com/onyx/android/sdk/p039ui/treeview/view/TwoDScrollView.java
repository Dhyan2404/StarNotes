package com.onyx.android.sdk.p039ui.treeview.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.Scroller;
import java.util.ArrayList;

/* loaded from: classes8.dex */
public class TwoDScrollView extends FrameLayout {

    /* renamed from: r */
    public static final int f47234r = 250;

    /* renamed from: s */
    public static final float f47235s = 0.5f;

    /* renamed from: e */
    public long f47236e;

    /* renamed from: f */
    public final Rect f47237f;

    /* renamed from: g */
    public Scroller f47238g;

    /* renamed from: h */
    public boolean f47239h;

    /* renamed from: i */
    public float f47240i;

    /* renamed from: j */
    public float f47241j;

    /* renamed from: k */
    public boolean f47242k;

    /* renamed from: l */
    public View f47243l;

    /* renamed from: m */
    public boolean f47244m;

    /* renamed from: n */
    public VelocityTracker f47245n;

    /* renamed from: o */
    public int f47246o;

    /* renamed from: p */
    public int f47247p;

    /* renamed from: q */
    public int f47248q;

    public TwoDScrollView(Context context) {
        super(context);
        this.f47237f = new Rect();
        this.f47242k = true;
        this.f47243l = null;
        this.f47244m = false;
        m36454f();
    }

    /* renamed from: a */
    public final boolean m36449a() {
        View childAt = getChildAt(0);
        if (childAt != null) {
            return getHeight() < (childAt.getHeight() + getPaddingTop()) + getPaddingBottom() || getWidth() < (childAt.getWidth() + getPaddingLeft()) + getPaddingRight();
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() <= 0) {
            super.addView(view);
            return;
        }
        throw new IllegalStateException("TwoDScrollView can host only one direct child");
    }

    public boolean arrowScroll(int i, boolean z) {
        int bottom;
        int bottom2;
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i);
        int maxScrollAmountHorizontal = z ? getMaxScrollAmountHorizontal() : getMaxScrollAmountVertical();
        if (z) {
            if (findNextFocus != null) {
                findNextFocus.getDrawingRect(this.f47237f);
                offsetDescendantRectToMyCoords(findNextFocus, this.f47237f);
                m36451c(computeScrollDeltaToGetChildRectOnScreen(this.f47237f), 0);
                findNextFocus.requestFocus(i);
                return true;
            }
            if (i == 33 && getScrollY() < maxScrollAmountHorizontal) {
                maxScrollAmountHorizontal = getScrollY();
            } else if (i == 130 && getChildCount() > 0 && (bottom = getChildAt(0).getBottom() - (getScrollY() + getHeight())) < maxScrollAmountHorizontal) {
                maxScrollAmountHorizontal = bottom;
            }
            if (maxScrollAmountHorizontal == 0) {
                return false;
            }
            if (i != 130) {
                maxScrollAmountHorizontal = -maxScrollAmountHorizontal;
            }
            m36451c(maxScrollAmountHorizontal, 0);
            return true;
        }
        if (findNextFocus != null) {
            findNextFocus.getDrawingRect(this.f47237f);
            offsetDescendantRectToMyCoords(findNextFocus, this.f47237f);
            m36451c(0, computeScrollDeltaToGetChildRectOnScreen(this.f47237f));
            findNextFocus.requestFocus(i);
            return true;
        }
        if (i == 33 && getScrollY() < maxScrollAmountHorizontal) {
            maxScrollAmountHorizontal = getScrollY();
        } else if (i == 130 && getChildCount() > 0 && (bottom2 = getChildAt(0).getBottom() - (getScrollY() + getHeight())) < maxScrollAmountHorizontal) {
            maxScrollAmountHorizontal = bottom2;
        }
        if (maxScrollAmountHorizontal == 0) {
            return false;
        }
        if (i != 130) {
            maxScrollAmountHorizontal = -maxScrollAmountHorizontal;
        }
        m36451c(0, maxScrollAmountHorizontal);
        return true;
    }

    /* renamed from: b */
    public final int m36450b(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        return i2 + i > i3 ? i3 - i2 : i;
    }

    /* renamed from: c */
    public final void m36451c(int i, int i2) {
        if (i == 0 && i2 == 0) {
            return;
        }
        smoothScrollBy(i, i2);
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        return getChildCount() == 0 ? getWidth() : getChildAt(0).getRight();
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f47238g.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.f47238g.getCurrX();
            int currY = this.f47238g.getCurrY();
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                scrollTo(m36450b(currX, (getWidth() - getPaddingRight()) - getPaddingLeft(), childAt.getWidth()), m36450b(currY, (getHeight() - getPaddingBottom()) - getPaddingTop(), childAt.getHeight()));
            } else {
                scrollTo(currX, currY);
            }
            if (scrollX != getScrollX() || scrollY != getScrollY()) {
                onScrollChanged(getScrollX(), getScrollY(), scrollX, scrollY);
            }
            postInvalidate();
        }
    }

    public int computeScrollDeltaToGetChildRectOnScreen(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        if (rect.bottom < getChildAt(0).getHeight()) {
            i -= verticalFadingEdgeLength;
        }
        int i2 = rect.bottom;
        if (i2 > i && rect.top > scrollY) {
            return Math.min((rect.height() > height ? rect.top - scrollY : rect.bottom - i) + 0, getChildAt(0).getBottom() - i);
        }
        if (rect.top >= scrollY || i2 >= i) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        return getChildCount() == 0 ? getHeight() : getChildAt(0).getBottom();
    }

    /* renamed from: d */
    public final View m36452d(boolean z, int i, int i2, boolean z2, int i3, int i4) {
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z3 = false;
        for (int i5 = 0; i5 < size; i5++) {
            View view2 = focusables.get(i5);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            int left = view2.getLeft();
            int right = view2.getRight();
            if (i < bottom && top < i2 && i3 < right && left < i4) {
                boolean z4 = i < top && bottom < i2 && i3 < left && right < i4;
                if (view == null) {
                    view = view2;
                    z3 = z4;
                } else {
                    boolean z5 = (z && top < view.getTop()) || (!z && bottom > view.getBottom());
                    boolean z6 = (z2 && left < view.getLeft()) || (!z2 && right > view.getRight());
                    if (z3) {
                        if (z4) {
                            if (z5) {
                                if (!z6) {
                                }
                                view = view2;
                            }
                        }
                    } else if (z4) {
                        view = view2;
                        z3 = true;
                    } else if (z5) {
                        if (!z6) {
                        }
                        view = view2;
                    }
                }
            }
        }
        return view;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        return executeKeyEvent(keyEvent);
    }

    /* renamed from: e */
    public final View m36453e(boolean z, int i, boolean z2, int i2, View view) {
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength() / 2;
        int i3 = i + verticalFadingEdgeLength;
        int height = (i + getHeight()) - verticalFadingEdgeLength;
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength() / 2;
        int i4 = i2 + horizontalFadingEdgeLength;
        int width = (i2 + getWidth()) - horizontalFadingEdgeLength;
        return (view == null || view.getTop() >= height || view.getBottom() <= i3 || view.getLeft() >= width || view.getRight() <= i4) ? m36452d(z, i3, height, z2, i4, width) : view;
    }

    public boolean executeKeyEvent(KeyEvent keyEvent) {
        this.f47237f.setEmpty();
        if (!m36449a()) {
            if (!isFocused()) {
                return false;
            }
            View findFocus = findFocus();
            if (findFocus == this) {
                findFocus = null;
            }
            View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, 130);
            return (findNextFocus == null || findNextFocus == this || !findNextFocus.requestFocus(130)) ? false : true;
        }
        if (keyEvent.getAction() != 0) {
            return false;
        }
        switch (keyEvent.getKeyCode()) {
            case 19:
                return !keyEvent.isAltPressed() ? arrowScroll(33, false) : fullScroll(33, false);
            case 20:
                return !keyEvent.isAltPressed() ? arrowScroll(130, false) : fullScroll(130, false);
            case 21:
                return !keyEvent.isAltPressed() ? arrowScroll(17, true) : fullScroll(17, true);
            case 22:
                return !keyEvent.isAltPressed() ? arrowScroll(66, true) : fullScroll(66, true);
            default:
                return false;
        }
    }

    /* renamed from: f */
    public final void m36454f() {
        this.f47238g = new Scroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f47246o = viewConfiguration.getScaledTouchSlop();
        this.f47247p = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f47248q = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    public void fling(int i, int i2) {
        if (getChildCount() > 0) {
            int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
            int height2 = getChildAt(0).getHeight();
            this.f47238g.fling(getScrollX(), getScrollY(), i, i2, 0, getChildAt(0).getWidth() - ((getWidth() - getPaddingRight()) - getPaddingLeft()), 0, height2 - height);
            boolean z = i2 > 0;
            View m36453e = m36453e(i > 0, this.f47238g.getFinalX(), z, this.f47238g.getFinalY(), findFocus());
            if (m36453e == null) {
                m36453e = this;
            }
            if (m36453e != findFocus()) {
                if (m36453e.requestFocus(z ? 130 : 33)) {
                    this.f47239h = false;
                }
            }
            awakenScrollBars(this.f47238g.getDuration());
            invalidate();
        }
    }

    public boolean fullScroll(int i, boolean z) {
        int childCount;
        int childCount2;
        if (z) {
            boolean z2 = i == 130;
            int width = getWidth();
            Rect rect = this.f47237f;
            rect.left = 0;
            rect.right = width;
            if (z2 && (childCount = getChildCount()) > 0) {
                this.f47237f.right = getChildAt(childCount - 1).getBottom();
                Rect rect2 = this.f47237f;
                rect2.left = rect2.right - width;
            }
            Rect rect3 = this.f47237f;
            return m36456h(0, 0, 0, i, rect3.top, rect3.bottom);
        }
        boolean z3 = i == 130;
        int height = getHeight();
        Rect rect4 = this.f47237f;
        rect4.top = 0;
        rect4.bottom = height;
        if (z3 && (childCount2 = getChildCount()) > 0) {
            this.f47237f.bottom = getChildAt(childCount2 - 1).getBottom();
            Rect rect5 = this.f47237f;
            rect5.top = rect5.bottom - height;
        }
        Rect rect6 = this.f47237f;
        return m36456h(i, rect6.top, rect6.bottom, 0, 0, 0);
    }

    /* renamed from: g */
    public final boolean m36455g(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && m36455g((View) parent, view2);
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = (getChildAt(0).getBottom() - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.View
    public float getLeftFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        if (getScrollX() < horizontalFadingEdgeLength) {
            return getScrollX() / horizontalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmountHorizontal() {
        return (int) (getWidth() * 0.5f);
    }

    public int getMaxScrollAmountVertical() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.View
    public float getRightFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        int right = (getChildAt(0).getRight() - getScrollX()) - (getWidth() - getPaddingRight());
        if (right < horizontalFadingEdgeLength) {
            return right / horizontalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (getScrollY() < verticalFadingEdgeLength) {
            return getScrollY() / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    /* renamed from: h */
    public final boolean m36456h(int i, int i2, int i3, int i4, int i5, int i6) {
        int height = getHeight();
        int scrollY = getScrollY();
        int i7 = scrollY + height;
        boolean z = true;
        boolean z2 = i == 33;
        int width = getWidth();
        int scrollX = getScrollX();
        int i8 = scrollX + width;
        boolean z3 = i4 == 33;
        View m36452d = m36452d(z2, i2, i3, z3, i5, i6);
        if (m36452d == null) {
            m36452d = this;
        }
        if ((i2 < scrollY || i3 > i7) && (i5 < scrollX || i6 > i8)) {
            m36451c(z3 ? i5 - scrollX : i6 - i8, z2 ? i2 - scrollY : i3 - i7);
        } else {
            z = false;
        }
        if (m36452d != findFocus() && m36452d.requestFocus(i)) {
            this.f47239h = false;
        }
        return z;
    }

    /* renamed from: i */
    public final void m36457i(View view) {
        view.getDrawingRect(this.f47237f);
        offsetDescendantRectToMyCoords(view, this.f47237f);
        int computeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(this.f47237f);
        if (computeScrollDeltaToGetChildRectOnScreen != 0) {
            scrollBy(0, computeScrollDeltaToGetChildRectOnScreen);
        }
    }

    /* renamed from: j */
    public final boolean m36458j(Rect rect, boolean z) {
        int computeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(rect);
        boolean z2 = computeScrollDeltaToGetChildRectOnScreen != 0;
        if (z2) {
            if (z) {
                scrollBy(0, computeScrollDeltaToGetChildRectOnScreen);
            } else {
                smoothScrollBy(0, computeScrollDeltaToGetChildRectOnScreen);
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup
    public void measureChild(View view, int i, int i2) {
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(View.MeasureSpec.makeMeasureSpec(marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, 0), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0026, code lost:
    
        if (r0 != 3) goto L24;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getAction()
            r1 = 1
            r2 = 2
            if (r0 != r2) goto Ld
            boolean r3 = r5.f47244m
            if (r3 == 0) goto Ld
            return r1
        Ld:
            boolean r3 = r5.m36449a()
            r4 = 0
            if (r3 != 0) goto L17
            r5.f47244m = r4
            return r4
        L17:
            float r3 = r6.getY()
            float r6 = r6.getX()
            if (r0 == 0) goto L45
            if (r0 == r1) goto L42
            if (r0 == r2) goto L29
            r6 = 3
            if (r0 == r6) goto L42
            goto L52
        L29:
            float r0 = r5.f47240i
            float r3 = r3 - r0
            float r0 = java.lang.Math.abs(r3)
            int r0 = (int) r0
            float r2 = r5.f47241j
            float r6 = r6 - r2
            float r6 = java.lang.Math.abs(r6)
            int r6 = (int) r6
            int r2 = r5.f47246o
            if (r0 > r2) goto L3f
            if (r6 <= r2) goto L52
        L3f:
            r5.f47244m = r1
            goto L52
        L42:
            r5.f47244m = r4
            goto L52
        L45:
            r5.f47240i = r3
            r5.f47241j = r6
            android.widget.Scroller r6 = r5.f47238g
            boolean r6 = r6.isFinished()
            r6 = r6 ^ r1
            r5.f47244m = r6
        L52:
            boolean r5 = r5.f47244m
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.p039ui.treeview.view.TwoDScrollView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f47242k = false;
        View view = this.f47243l;
        if (view != null && m36455g(view, this)) {
            m36457i(this.f47243l);
        }
        this.f47243l = null;
        scrollTo(getScrollX(), getScrollY());
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (i == 2) {
            i = 130;
        } else if (i == 1) {
            i = 33;
        }
        View findNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i);
        if (findNextFocus == null) {
            return false;
        }
        return findNextFocus.requestFocus(i, rect);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus == null || this == findFocus) {
            return;
        }
        findFocus.getDrawingRect(this.f47237f);
        offsetDescendantRectToMyCoords(findFocus, this.f47237f);
        m36451c(computeScrollDeltaToGetChildRectOnScreen(this.f47237f), computeScrollDeltaToGetChildRectOnScreen(this.f47237f));
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004c, code lost:
    
        if (getScrollX() < 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0075, code lost:
    
        if (getScrollY() < 0) goto L37;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.p039ui.treeview.view.TwoDScrollView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f47239h) {
            if (this.f47242k) {
                this.f47243l = view2;
            } else {
                m36457i(view2);
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return m36458j(rect, z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f47242k = true;
        super.requestLayout();
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            int m36450b = m36450b(i, (getWidth() - getPaddingRight()) - getPaddingLeft(), childAt.getWidth());
            int m36450b2 = m36450b(i2, (getHeight() - getPaddingBottom()) - getPaddingTop(), childAt.getHeight());
            if (m36450b == getScrollX() && m36450b2 == getScrollY()) {
                return;
            }
            super.scrollTo(m36450b, m36450b2);
        }
    }

    public final void smoothScrollBy(int i, int i2) {
        if (AnimationUtils.currentAnimationTimeMillis() - this.f47236e > 250) {
            this.f47238g.startScroll(getScrollX(), getScrollY(), i, i2);
            awakenScrollBars(this.f47238g.getDuration());
            invalidate();
        } else {
            if (!this.f47238g.isFinished()) {
                this.f47238g.abortAnimation();
            }
            scrollBy(i, i2);
        }
        this.f47236e = AnimationUtils.currentAnimationTimeMillis();
    }

    public final void smoothScrollTo(int i, int i2) {
        smoothScrollBy(i - getScrollX(), i2 - getScrollY());
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        if (getChildCount() <= 0) {
            super.addView(view, i);
            return;
        }
        throw new IllegalStateException("TwoDScrollView can host only one direct child");
    }

    public TwoDScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f47237f = new Rect();
        this.f47242k = true;
        this.f47243l = null;
        this.f47244m = false;
        m36454f();
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("TwoDScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("TwoDScrollView can host only one direct child");
    }

    public TwoDScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f47237f = new Rect();
        this.f47242k = true;
        this.f47243l = null;
        this.f47244m = false;
        m36454f();
    }
}
