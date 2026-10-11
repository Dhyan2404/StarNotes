package com.bumptech.glide.request.target;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.C1896R;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.util.Preconditions;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class CustomViewTarget<T extends View, Z> implements Target<Z> {

    /* renamed from: i */
    public static final String f15382i = "CustomViewTarget";

    /* renamed from: j */
    @IdRes
    public static final int f15383j = C1896R.id.glide_custom_view_target_tag;

    /* renamed from: e */
    public final C2027b f15384e;

    /* renamed from: f */
    @Nullable
    public View.OnAttachStateChangeListener f15385f;

    /* renamed from: g */
    public boolean f15386g;

    /* renamed from: h */
    public boolean f15387h;
    protected final T view;

    /* renamed from: com.bumptech.glide.request.target.CustomViewTarget$a */
    /* loaded from: classes3.dex */
    public class ViewOnAttachStateChangeListenerC2026a implements View.OnAttachStateChangeListener {
        public ViewOnAttachStateChangeListenerC2026a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            CustomViewTarget.this.m9131e();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            CustomViewTarget.this.m9130d();
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.request.target.CustomViewTarget$b */
    /* loaded from: classes3.dex */
    public static final class C2027b {

        /* renamed from: e */
        public static final int f15389e = 0;

        /* renamed from: f */
        @Nullable
        @VisibleForTesting
        public static Integer f15390f;

        /* renamed from: a */
        public final View f15391a;

        /* renamed from: b */
        public final List<SizeReadyCallback> f15392b = new ArrayList();

        /* renamed from: c */
        public boolean f15393c;

        /* renamed from: d */
        @Nullable
        public a f15394d;

        /* renamed from: com.bumptech.glide.request.target.CustomViewTarget$b$a */
        /* loaded from: classes3.dex */
        public static final class a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: e */
            public final WeakReference<C2027b> f15395e;

            public a(@NonNull C2027b c2027b) {
                this.f15395e = new WeakReference<>(c2027b);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable(CustomViewTarget.f15382i, 2)) {
                    Log.v(CustomViewTarget.f15382i, "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                C2027b c2027b = this.f15395e.get();
                if (c2027b == null) {
                    return true;
                }
                c2027b.m9134a();
                return true;
            }
        }

        public C2027b(@NonNull View view) {
            this.f15391a = view;
        }

        /* renamed from: c */
        public static int m9133c(@NonNull Context context) {
            if (f15390f == null) {
                Display defaultDisplay = ((WindowManager) Preconditions.checkNotNull((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f15390f = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f15390f.intValue();
        }

        /* renamed from: a */
        public void m9134a() {
            if (this.f15392b.isEmpty()) {
                return;
            }
            int m9139g = m9139g();
            int m9138f = m9138f();
            if (m9141i(m9139g, m9138f)) {
                m9142j(m9139g, m9138f);
                m9135b();
            }
        }

        /* renamed from: b */
        public void m9135b() {
            ViewTreeObserver viewTreeObserver = this.f15391a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f15394d);
            }
            this.f15394d = null;
            this.f15392b.clear();
        }

        /* renamed from: d */
        public void m9136d(@NonNull SizeReadyCallback sizeReadyCallback) {
            int m9139g = m9139g();
            int m9138f = m9138f();
            if (m9141i(m9139g, m9138f)) {
                sizeReadyCallback.onSizeReady(m9139g, m9138f);
                return;
            }
            if (!this.f15392b.contains(sizeReadyCallback)) {
                this.f15392b.add(sizeReadyCallback);
            }
            if (this.f15394d == null) {
                ViewTreeObserver viewTreeObserver = this.f15391a.getViewTreeObserver();
                a aVar = new a(this);
                this.f15394d = aVar;
                viewTreeObserver.addOnPreDrawListener(aVar);
            }
        }

        /* renamed from: e */
        public final int m9137e(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            if (this.f15393c && this.f15391a.isLayoutRequested()) {
                return 0;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            if (this.f15391a.isLayoutRequested() || i2 != -2) {
                return 0;
            }
            if (Log.isLoggable(CustomViewTarget.f15382i, 4)) {
                Log.i(CustomViewTarget.f15382i, "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            return m9133c(this.f15391a.getContext());
        }

        /* renamed from: f */
        public final int m9138f() {
            int paddingTop = this.f15391a.getPaddingTop() + this.f15391a.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f15391a.getLayoutParams();
            return m9137e(this.f15391a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop);
        }

        /* renamed from: g */
        public final int m9139g() {
            int paddingLeft = this.f15391a.getPaddingLeft() + this.f15391a.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f15391a.getLayoutParams();
            return m9137e(this.f15391a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft);
        }

        /* renamed from: h */
        public final boolean m9140h(int i) {
            return i > 0 || i == Integer.MIN_VALUE;
        }

        /* renamed from: i */
        public final boolean m9141i(int i, int i2) {
            return m9140h(i) && m9140h(i2);
        }

        /* renamed from: j */
        public final void m9142j(int i, int i2) {
            Iterator it2 = new ArrayList(this.f15392b).iterator();
            while (it2.hasNext()) {
                ((SizeReadyCallback) it2.next()).onSizeReady(i, i2);
            }
        }

        /* renamed from: k */
        public void m9143k(@NonNull SizeReadyCallback sizeReadyCallback) {
            this.f15392b.remove(sizeReadyCallback);
        }
    }

    public CustomViewTarget(@NonNull T t) {
        this.view = (T) Preconditions.checkNotNull(t);
        this.f15384e = new C2027b(t);
    }

    @Nullable
    /* renamed from: a */
    public final Object m9127a() {
        return this.view.getTag(f15383j);
    }

    /* renamed from: b */
    public final void m9128b() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f15385f;
        if (onAttachStateChangeListener == null || this.f15387h) {
            return;
        }
        this.view.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f15387h = true;
    }

    /* renamed from: c */
    public final void m9129c() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f15385f;
        if (onAttachStateChangeListener == null || !this.f15387h) {
            return;
        }
        this.view.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f15387h = false;
    }

    @NonNull
    public final CustomViewTarget<T, Z> clearOnDetach() {
        if (this.f15385f != null) {
            return this;
        }
        this.f15385f = new ViewOnAttachStateChangeListenerC2026a();
        m9128b();
        return this;
    }

    /* renamed from: d */
    public final void m9130d() {
        Request request = getRequest();
        if (request != null) {
            this.f15386g = true;
            request.clear();
            this.f15386g = false;
        }
    }

    /* renamed from: e */
    public final void m9131e() {
        Request request = getRequest();
        if (request == null || !request.isCleared()) {
            return;
        }
        request.begin();
    }

    /* renamed from: f */
    public final void m9132f(@Nullable Object obj) {
        this.view.setTag(f15383j, obj);
    }

    @Override // com.bumptech.glide.request.target.Target
    @Nullable
    public final Request getRequest() {
        Object m9127a = m9127a();
        if (m9127a == null) {
            return null;
        }
        if (m9127a instanceof Request) {
            return (Request) m9127a;
        }
        throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
        this.f15384e.m9136d(sizeReadyCallback);
    }

    @NonNull
    public final T getView() {
        return this.view;
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void onLoadCleared(@Nullable Drawable drawable) {
        this.f15384e.m9135b();
        onResourceCleared(drawable);
        if (this.f15386g) {
            return;
        }
        m9129c();
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void onLoadStarted(@Nullable Drawable drawable) {
        m9128b();
        onResourceLoading(drawable);
    }

    public abstract void onResourceCleared(@Nullable Drawable drawable);

    public void onResourceLoading(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
        this.f15384e.m9143k(sizeReadyCallback);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void setRequest(@Nullable Request request) {
        m9132f(request);
    }

    public String toString() {
        return "Target for: " + this.view;
    }

    @Deprecated
    public final CustomViewTarget<T, Z> useTagId(@IdRes int i) {
        return this;
    }

    @NonNull
    public final CustomViewTarget<T, Z> waitForLayout() {
        this.f15384e.f15393c = true;
        return this;
    }
}
