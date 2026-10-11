package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.ViewOverlayImpl;
import com.google.android.material.internal.ViewUtils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* loaded from: classes6.dex */
public class k4o implements ViewOverlayImpl {

    /* renamed from: a */
    public C13979a f75078a;

    @SuppressLint({"ViewConstructor", "PrivateApi"})
    /* renamed from: com.sunia.HTREnginev2.k4o$a */
    /* loaded from: classes6.dex */
    public static class C13979a extends ViewGroup {

        /* renamed from: j */
        public static Method f75079j;

        /* renamed from: e */
        public ViewGroup f75080e;

        /* renamed from: f */
        public View f75081f;

        /* renamed from: g */
        public ArrayList<Drawable> f75082g;

        /* renamed from: h */
        public k4o f75083h;

        /* renamed from: i */
        public boolean f75084i;

        static {
            try {
                Class cls = Integer.TYPE;
                f75079j = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", cls, cls, Rect.class);
            } catch (NoSuchMethodException unused) {
            }
        }

        public C13979a(Context context, ViewGroup viewGroup, View view, k4o k4oVar) {
            super(context);
            this.f75082g = null;
            this.f75080e = viewGroup;
            this.f75081f = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f75083h = k4oVar;
        }

        /* renamed from: a */
        public void m55176a(Drawable drawable) {
            m55178c();
            if (this.f75082g == null) {
                this.f75082g = new ArrayList<>();
            }
            if (this.f75082g.contains(drawable)) {
                return;
            }
            this.f75082g.add(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(this);
        }

        /* renamed from: b */
        public void m55177b(View view) {
            m55178c();
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f75080e && viewGroup.getParent() != null && ViewCompat.isAttachedToWindow(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f75080e.getLocationOnScreen(iArr2);
                    ViewCompat.offsetLeftAndRight(view, iArr[0] - iArr2[0]);
                    ViewCompat.offsetTopAndBottom(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view);
        }

        /* renamed from: c */
        public final void m55178c() {
            if (this.f75084i) {
                throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
            }
        }

        /* renamed from: d */
        public final void m55179d() {
            if (getChildCount() == 0) {
                ArrayList<Drawable> arrayList = this.f75082g;
                if (arrayList == null || arrayList.size() == 0) {
                    this.f75084i = true;
                    this.f75080e.removeView(this);
                }
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            this.f75080e.getLocationOnScreen(new int[2]);
            this.f75081f.getLocationOnScreen(new int[2]);
            canvas.translate(r0[0] - r1[0], r0[1] - r1[1]);
            canvas.clipRect(new Rect(0, 0, this.f75081f.getWidth(), this.f75081f.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f75082g;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f75082g.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: e */
        public final void m55180e(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f75080e.getLocationOnScreen(iArr2);
            this.f75081f.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        /* renamed from: f */
        public ViewParent m55181f(int i, int i2, Rect rect) {
            if (this.f75080e == null || f75079j == null) {
                return null;
            }
            try {
                m55180e(new int[2]);
                f75079j.invoke(this.f75080e, Integer.valueOf(i), Integer.valueOf(i2), rect);
                return null;
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return null;
            } catch (InvocationTargetException e2) {
                e2.printStackTrace();
                return null;
            }
        }

        /* renamed from: g */
        public void m55182g(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f75082g;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
                m55179d();
            }
        }

        /* renamed from: h */
        public void m55183h(View view) {
            super.removeView(view);
            m55179d();
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f75080e == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            if (this.f75080e == null) {
                invalidate(rect);
                return null;
            }
            iArr[0] = 0;
            iArr[1] = 0;
            int[] iArr2 = new int[2];
            m55180e(iArr2);
            rect.offset(iArr2[0], iArr2[1]);
            return super.invalidateChildInParent(iArr, rect);
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(@NonNull Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        }

        @Override // android.view.View
        public boolean verifyDrawable(@NonNull Drawable drawable) {
            ArrayList<Drawable> arrayList;
            return super.verifyDrawable(drawable) || ((arrayList = this.f75082g) != null && arrayList.contains(drawable));
        }
    }

    public k4o(Context context, ViewGroup viewGroup, View view) {
        this.f75078a = new C13979a(context, viewGroup, view, this);
    }

    /* renamed from: c */
    public static k4o m55175c(View view) {
        ViewGroup contentView = ViewUtils.getContentView(view);
        if (contentView == null) {
            return null;
        }
        int childCount = contentView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = contentView.getChildAt(i);
            if (childAt instanceof C13979a) {
                return ((C13979a) childAt).f75083h;
            }
        }
        return new i3o(contentView.getContext(), contentView, view);
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    public void add(@NonNull Drawable drawable) {
        this.f75078a.m55176a(drawable);
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    public void remove(@NonNull Drawable drawable) {
        this.f75078a.m55182g(drawable);
    }
}
