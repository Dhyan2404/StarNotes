package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.appcompat.C0118R;
import androidx.appcompat.graphics.drawable.DrawableWrapperCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.widget.ListViewAutoScrollHelper;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class jjf extends ListView {
    public static final int INVALID_POSITION = -1;
    public static final int NO_POSITION = -1;

    /* renamed from: e */
    public final Rect f74358e;

    /* renamed from: f */
    public int f74359f;

    /* renamed from: g */
    public int f74360g;

    /* renamed from: h */
    public int f74361h;

    /* renamed from: i */
    public int f74362i;

    /* renamed from: j */
    public int f74363j;

    /* renamed from: k */
    public C13931d f74364k;

    /* renamed from: l */
    public boolean f74365l;

    /* renamed from: m */
    public boolean f74366m;

    /* renamed from: n */
    public boolean f74367n;

    /* renamed from: o */
    public ViewPropertyAnimatorCompat f74368o;

    /* renamed from: p */
    public ListViewAutoScrollHelper f74369p;

    /* renamed from: q */
    public RunnableC13933f f74370q;

    @RequiresApi(21)
    /* renamed from: com.sunia.HTREnginev2.jjf$a */
    /* loaded from: classes3.dex */
    public static class C13928a {
        @DoNotInline
        /* renamed from: a */
        public static void m54935a(View view, float f, float f2) {
            view.drawableHotspotChanged(f, f2);
        }
    }

    @RequiresApi(30)
    /* renamed from: com.sunia.HTREnginev2.jjf$b */
    /* loaded from: classes3.dex */
    public static class C13929b {

        /* renamed from: a */
        public static Method f74371a;

        /* renamed from: b */
        public static Method f74372b;

        /* renamed from: c */
        public static Method f74373c;

        /* renamed from: d */
        public static boolean f74374d;

        static {
            try {
                Class cls = Integer.TYPE;
                Class cls2 = Float.TYPE;
                Method declaredMethod = AbsListView.class.getDeclaredMethod("positionSelector", cls, View.class, Boolean.TYPE, cls2, cls2);
                f74371a = declaredMethod;
                declaredMethod.setAccessible(true);
                Method declaredMethod2 = AdapterView.class.getDeclaredMethod("setSelectedPositionInt", cls);
                f74372b = declaredMethod2;
                declaredMethod2.setAccessible(true);
                Method declaredMethod3 = AdapterView.class.getDeclaredMethod("setNextSelectedPositionInt", cls);
                f74373c = declaredMethod3;
                declaredMethod3.setAccessible(true);
                f74374d = true;
            } catch (NoSuchMethodException e) {
                e.printStackTrace();
            }
        }

        /* renamed from: a */
        public static boolean m54936a() {
            return f74374d;
        }

        @SuppressLint({"BanUncheckedReflection"})
        /* renamed from: b */
        public static void m54937b(jjf jjfVar, int i, View view) {
            try {
                f74371a.invoke(jjfVar, Integer.valueOf(i), view, Boolean.FALSE, -1, -1);
                f74372b.invoke(jjfVar, Integer.valueOf(i));
                f74373c.invoke(jjfVar, Integer.valueOf(i));
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e2) {
                e2.printStackTrace();
            }
        }
    }

    @RequiresApi(33)
    /* renamed from: com.sunia.HTREnginev2.jjf$c */
    /* loaded from: classes3.dex */
    public static class C13930c {
        @DoNotInline
        /* renamed from: a */
        public static boolean m54938a(AbsListView absListView) {
            return absListView.isSelectedChildViewEnabled();
        }

        @DoNotInline
        /* renamed from: b */
        public static void m54939b(AbsListView absListView, boolean z) {
            absListView.setSelectedChildViewEnabled(z);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.jjf$d */
    /* loaded from: classes3.dex */
    public static class C13931d extends DrawableWrapperCompat {

        /* renamed from: f */
        public boolean f74375f;

        public C13931d(Drawable drawable) {
            super(drawable);
            this.f74375f = true;
        }

        /* renamed from: a */
        public void m54940a(boolean z) {
            this.f74375f = z;
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            if (this.f74375f) {
                super.draw(canvas);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
        public void setHotspot(float f, float f2) {
            if (this.f74375f) {
                super.setHotspot(f, f2);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f74375f) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f74375f) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            if (this.f74375f) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.jjf$e */
    /* loaded from: classes3.dex */
    public static class C13932e {

        /* renamed from: a */
        public static final Field f74376a;

        static {
            Field field = null;
            try {
                field = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
                field.setAccessible(true);
            } catch (NoSuchFieldException e) {
                e.printStackTrace();
            }
            f74376a = field;
        }

        /* renamed from: a */
        public static boolean m54941a(AbsListView absListView) {
            Field field = f74376a;
            if (field == null) {
                return false;
            }
            try {
                return field.getBoolean(absListView);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return false;
            }
        }

        /* renamed from: b */
        public static void m54942b(AbsListView absListView, boolean z) {
            Field field = f74376a;
            if (field != null) {
                try {
                    field.set(absListView, Boolean.valueOf(z));
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.jjf$f */
    /* loaded from: classes3.dex */
    public class RunnableC13933f implements Runnable {
        public RunnableC13933f() {
        }

        /* renamed from: a */
        public void m54943a() {
            jjf jjfVar = jjf.this;
            jjfVar.f74370q = null;
            jjfVar.removeCallbacks(this);
        }

        /* renamed from: b */
        public void m54944b() {
            jjf.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            jjf jjfVar = jjf.this;
            jjfVar.f74370q = null;
            jjfVar.drawableStateChanged();
        }
    }

    public jjf(@NonNull Context context, boolean z) {
        super(context, null, C0118R.attr.dropDownListViewStyle);
        this.f74358e = new Rect();
        this.f74359f = 0;
        this.f74360g = 0;
        this.f74361h = 0;
        this.f74362i = 0;
        this.f74366m = z;
        setCacheColorHint(0);
    }

    /* renamed from: a */
    public final void m54923a() {
        this.f74367n = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f74363j - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f74368o;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
            this.f74368o = null;
        }
    }

    /* renamed from: b */
    public final void m54924b(View view, int i) {
        performItemClick(view, i, getItemIdAtPosition(i));
    }

    /* renamed from: c */
    public final void m54925c(Canvas canvas) {
        Drawable selector;
        if (this.f74358e.isEmpty() || (selector = getSelector()) == null) {
            return;
        }
        selector.setBounds(this.f74358e);
        selector.draw(canvas);
    }

    /* renamed from: d */
    public final void m54926d(int i, View view) {
        Rect rect = this.f74358e;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f74359f;
        rect.top -= this.f74360g;
        rect.right += this.f74361h;
        rect.bottom += this.f74362i;
        boolean m54931i = m54931i();
        if (view.isEnabled() != m54931i) {
            m54932j(!m54931i);
            if (i != -1) {
                refreshDrawableState();
            }
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        m54925c(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.f74370q != null) {
            return;
        }
        super.drawableStateChanged();
        m54930h(true);
        m54934l();
    }

    /* renamed from: e */
    public final void m54927e(int i, View view) {
        Drawable selector = getSelector();
        boolean z = (selector == null || i == -1) ? false : true;
        if (z) {
            selector.setVisible(false, false);
        }
        m54926d(i, view);
        if (z) {
            Rect rect = this.f74358e;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            selector.setVisible(getVisibility() == 0, false);
            DrawableCompat.setHotspot(selector, exactCenterX, exactCenterY);
        }
    }

    /* renamed from: f */
    public final void m54928f(int i, View view, float f, float f2) {
        m54927e(i, view);
        Drawable selector = getSelector();
        if (selector == null || i == -1) {
            return;
        }
        DrawableCompat.setHotspot(selector, f, f2);
    }

    /* renamed from: g */
    public final void m54929g(View view, int i, float f, float f2) {
        View childAt;
        this.f74367n = true;
        C13928a.m54935a(this, f, f2);
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i2 = this.f74363j;
        if (i2 != -1 && (childAt = getChildAt(i2 - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f74363j = i;
        C13928a.m54935a(view, f - view.getLeft(), f2 - view.getTop());
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        m54928f(i, view, f, f2);
        m54930h(false);
        refreshDrawableState();
    }

    /* renamed from: h */
    public final void m54930h(boolean z) {
        C13931d c13931d = this.f74364k;
        if (c13931d != null) {
            c13931d.m54940a(z);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f74366m || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f74366m || super.hasWindowFocus();
    }

    /* renamed from: i */
    public final boolean m54931i() {
        return Build.VERSION.SDK_INT >= 33 ? C13930c.m54938a(this) : C13932e.m54941a(this);
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f74366m || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f74366m && this.f74365l) || super.isInTouchMode();
    }

    /* renamed from: j */
    public final void m54932j(boolean z) {
        if (Build.VERSION.SDK_INT >= 33) {
            C13930c.m54939b(this, z);
        } else {
            C13932e.m54942b(this, z);
        }
    }

    /* renamed from: k */
    public final boolean m54933k() {
        return this.f74367n;
    }

    /* renamed from: l */
    public final void m54934l() {
        Drawable selector = getSelector();
        if (selector != null && m54933k() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    public int lookForSelectablePosition(int i, boolean z) {
        int min;
        ListAdapter adapter = getAdapter();
        if (adapter != null && !isInTouchMode()) {
            int count = adapter.getCount();
            if (!getAdapter().areAllItemsEnabled()) {
                if (z) {
                    min = Math.max(0, i);
                    while (min < count && !adapter.isEnabled(min)) {
                        min++;
                    }
                } else {
                    min = Math.min(i, count - 1);
                    while (min >= 0 && !adapter.isEnabled(min)) {
                        min--;
                    }
                }
                if (min < 0 || min >= count) {
                    return -1;
                }
                return min;
            }
            if (i >= 0 && i < count) {
                return i;
            }
        }
        return -1;
    }

    public int measureHeightOfChildrenCompat(int i, int i2, int i3, int i4, int i5) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i6 = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        View view = null;
        while (i7 < count) {
            int itemViewType = adapter.getItemViewType(i7);
            if (itemViewType != i8) {
                view = null;
                i8 = itemViewType;
            }
            view = adapter.getView(i7, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i10 = layoutParams.height;
            view.measure(i, i10 > 0 ? View.MeasureSpec.makeMeasureSpec(i10, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i7 > 0) {
                i6 += dividerHeight;
            }
            i6 += view.getMeasuredHeight();
            if (i6 >= i4) {
                return (i5 < 0 || i7 <= i5 || i9 <= 0 || i6 == i4) ? i4 : i9;
            }
            if (i5 >= 0 && i7 >= i5) {
                i9 = i6;
            }
            i7++;
        }
        return i6;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f74370q = null;
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000c, code lost:
    
        if (r0 != 3) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0048 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onForwardedEvent(android.view.MotionEvent r8, int r9) {
        /*
            r7 = this;
            int r0 = r8.getActionMasked()
            r1 = 1
            r2 = 0
            if (r0 == r1) goto L16
            r3 = 2
            if (r0 == r3) goto L14
            r9 = 3
            if (r0 == r9) goto L11
        Le:
            r3 = r1
            r9 = r2
            goto L46
        L11:
            r9 = r2
            r3 = r9
            goto L46
        L14:
            r3 = r1
            goto L17
        L16:
            r3 = r2
        L17:
            int r9 = r8.findPointerIndex(r9)
            if (r9 >= 0) goto L1e
            goto L11
        L1e:
            float r4 = r8.getX(r9)
            int r4 = (int) r4
            float r9 = r8.getY(r9)
            int r9 = (int) r9
            int r5 = r7.pointToPosition(r4, r9)
            r6 = -1
            if (r5 != r6) goto L31
            r9 = r1
            goto L46
        L31:
            int r3 = r7.getFirstVisiblePosition()
            int r3 = r5 - r3
            android.view.View r3 = r7.getChildAt(r3)
            float r4 = (float) r4
            float r9 = (float) r9
            r7.m54929g(r3, r5, r4, r9)
            if (r0 != r1) goto Le
            r7.m54924b(r3, r5)
            goto Le
        L46:
            if (r3 == 0) goto L4a
            if (r9 == 0) goto L4d
        L4a:
            r7.m54923a()
        L4d:
            if (r3 == 0) goto L65
            androidx.core.widget.ListViewAutoScrollHelper r9 = r7.f74369p
            if (r9 != 0) goto L5a
            androidx.core.widget.ListViewAutoScrollHelper r9 = new androidx.core.widget.ListViewAutoScrollHelper
            r9.<init>(r7)
            r7.f74369p = r9
        L5a:
            androidx.core.widget.ListViewAutoScrollHelper r9 = r7.f74369p
            r9.setEnabled(r1)
            androidx.core.widget.ListViewAutoScrollHelper r9 = r7.f74369p
            r9.onTouch(r7, r8)
            goto L6c
        L65:
            androidx.core.widget.ListViewAutoScrollHelper r7 = r7.f74369p
            if (r7 == 0) goto L6c
            r7.setEnabled(r2)
        L6c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.jjf.onForwardedEvent(android.view.MotionEvent, int):boolean");
    }

    @Override // android.view.View
    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        int i = Build.VERSION.SDK_INT;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f74370q == null) {
            RunnableC13933f runnableC13933f = new RunnableC13933f();
            this.f74370q = runnableC13933f;
            runnableC13933f.m54944b();
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    requestFocus();
                    if (i < 30 || !C13929b.m54936a()) {
                        setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                    } else {
                        C13929b.m54937b(this, pointToPosition, childAt);
                    }
                }
                m54934l();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f74363j = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        RunnableC13933f runnableC13933f = this.f74370q;
        if (runnableC13933f != null) {
            runnableC13933f.m54943a();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z) {
        this.f74365l = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        C13931d c13931d = drawable != null ? new C13931d(drawable) : null;
        this.f74364k = c13931d;
        super.setSelector(c13931d);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f74359f = rect.left;
        this.f74360g = rect.top;
        this.f74361h = rect.right;
        this.f74362i = rect.bottom;
    }
}
