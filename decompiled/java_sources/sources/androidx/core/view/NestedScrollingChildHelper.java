package androidx.core.view;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public class NestedScrollingChildHelper {

    /* renamed from: a */
    public ViewParent f5849a;

    /* renamed from: b */
    public ViewParent f5850b;

    /* renamed from: c */
    public final View f5851c;

    /* renamed from: d */
    public boolean f5852d;

    /* renamed from: e */
    public int[] f5853e;

    public NestedScrollingChildHelper(@NonNull View view) {
        this.f5851c = view;
    }

    /* renamed from: a */
    public final boolean m3351a(int i, int i2, int i3, int i4, @Nullable int[] iArr, int i5, @Nullable int[] iArr2) {
        ViewParent m3352b;
        int i6;
        int i7;
        int[] iArr3;
        if (!isNestedScrollingEnabled() || (m3352b = m3352b(i5)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.f5851c.getLocationInWindow(iArr);
            i6 = iArr[0];
            i7 = iArr[1];
        } else {
            i6 = 0;
            i7 = 0;
        }
        if (iArr2 == null) {
            int[] m3353c = m3353c();
            m3353c[0] = 0;
            m3353c[1] = 0;
            iArr3 = m3353c;
        } else {
            iArr3 = iArr2;
        }
        ViewParentCompat.onNestedScroll(m3352b, this.f5851c, i, i2, i3, i4, i5, iArr3);
        if (iArr != null) {
            this.f5851c.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i6;
            iArr[1] = iArr[1] - i7;
        }
        return true;
    }

    /* renamed from: b */
    public final ViewParent m3352b(int i) {
        if (i == 0) {
            return this.f5849a;
        }
        if (i != 1) {
            return null;
        }
        return this.f5850b;
    }

    /* renamed from: c */
    public final int[] m3353c() {
        if (this.f5853e == null) {
            this.f5853e = new int[2];
        }
        return this.f5853e;
    }

    /* renamed from: d */
    public final void m3354d(int i, ViewParent viewParent) {
        if (i == 0) {
            this.f5849a = viewParent;
        } else {
            if (i != 1) {
                return;
            }
            this.f5850b = viewParent;
        }
    }

    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        ViewParent m3352b;
        if (!isNestedScrollingEnabled() || (m3352b = m3352b(0)) == null) {
            return false;
        }
        return ViewParentCompat.onNestedFling(m3352b, this.f5851c, f, f2, z);
    }

    public boolean dispatchNestedPreFling(float f, float f2) {
        ViewParent m3352b;
        if (!isNestedScrollingEnabled() || (m3352b = m3352b(0)) == null) {
            return false;
        }
        return ViewParentCompat.onNestedPreFling(m3352b, this.f5851c, f, f2);
    }

    public boolean dispatchNestedPreScroll(int i, int i2, @Nullable int[] iArr, @Nullable int[] iArr2) {
        return dispatchNestedPreScroll(i, i2, iArr, iArr2, 0);
    }

    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, @Nullable int[] iArr) {
        return m3351a(i, i2, i3, i4, iArr, 0, null);
    }

    public boolean hasNestedScrollingParent() {
        return hasNestedScrollingParent(0);
    }

    public boolean isNestedScrollingEnabled() {
        return this.f5852d;
    }

    public void onDetachedFromWindow() {
        ViewCompat.stopNestedScroll(this.f5851c);
    }

    public void onStopNestedScroll(@NonNull View view) {
        ViewCompat.stopNestedScroll(this.f5851c);
    }

    public void setNestedScrollingEnabled(boolean z) {
        if (this.f5852d) {
            ViewCompat.stopNestedScroll(this.f5851c);
        }
        this.f5852d = z;
    }

    public boolean startNestedScroll(int i) {
        return startNestedScroll(i, 0);
    }

    public void stopNestedScroll() {
        stopNestedScroll(0);
    }

    public boolean dispatchNestedPreScroll(int i, int i2, @Nullable int[] iArr, @Nullable int[] iArr2, int i3) {
        ViewParent m3352b;
        int i4;
        int i5;
        if (!isNestedScrollingEnabled() || (m3352b = m3352b(i3)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        if (iArr2 != null) {
            this.f5851c.getLocationInWindow(iArr2);
            i4 = iArr2[0];
            i5 = iArr2[1];
        } else {
            i4 = 0;
            i5 = 0;
        }
        if (iArr == null) {
            iArr = m3353c();
        }
        iArr[0] = 0;
        iArr[1] = 0;
        ViewParentCompat.onNestedPreScroll(m3352b, this.f5851c, i, i2, iArr, i3);
        if (iArr2 != null) {
            this.f5851c.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i4;
            iArr2[1] = iArr2[1] - i5;
        }
        return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
    }

    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, @Nullable int[] iArr, int i5) {
        return m3351a(i, i2, i3, i4, iArr, i5, null);
    }

    public boolean hasNestedScrollingParent(int i) {
        return m3352b(i) != null;
    }

    public boolean startNestedScroll(int i, int i2) {
        if (hasNestedScrollingParent(i2)) {
            return true;
        }
        if (!isNestedScrollingEnabled()) {
            return false;
        }
        View view = this.f5851c;
        for (ViewParent parent = this.f5851c.getParent(); parent != null; parent = parent.getParent()) {
            if (ViewParentCompat.onStartNestedScroll(parent, view, this.f5851c, i, i2)) {
                m3354d(i2, parent);
                ViewParentCompat.onNestedScrollAccepted(parent, view, this.f5851c, i, i2);
                return true;
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    public void stopNestedScroll(int i) {
        ViewParent m3352b = m3352b(i);
        if (m3352b != null) {
            ViewParentCompat.onStopNestedScroll(m3352b, this.f5851c, i);
            m3354d(i, null);
        }
    }

    public void dispatchNestedScroll(int i, int i2, int i3, int i4, @Nullable int[] iArr, int i5, @Nullable int[] iArr2) {
        m3351a(i, i2, i3, i4, iArr, i5, iArr2);
    }
}
