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
import androidx.annotation.CallSuper;
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

@Deprecated
/* loaded from: classes3.dex */
public abstract class ViewTarget<T extends View, Z> extends BaseTarget<Z> {

    /* renamed from: j */
    public static final String f15417j = "ViewTarget";

    /* renamed from: k */
    public static boolean f15418k;

    /* renamed from: l */
    public static int f15419l = C1896R.id.glide_custom_view_target_tag;

    /* renamed from: f */
    public final C2031b f15420f;

    /* renamed from: g */
    @Nullable
    public View.OnAttachStateChangeListener f15421g;

    /* renamed from: h */
    public boolean f15422h;

    /* renamed from: i */
    public boolean f15423i;
    protected final T view;

    /* renamed from: com.bumptech.glide.request.target.ViewTarget$a */
    /* loaded from: classes3.dex */
    public class ViewOnAttachStateChangeListenerC2030a implements View.OnAttachStateChangeListener {
        public ViewOnAttachStateChangeListenerC2030a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            ViewTarget.this.m9154e();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTarget.this.m9153d();
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.request.target.ViewTarget$b */
    /* loaded from: classes3.dex */
    public static final class C2031b {

        /* renamed from: e */
        public static final int f15425e = 0;

        /* renamed from: f */
        @Nullable
        @VisibleForTesting
        public static Integer f15426f;

        /* renamed from: a */
        public final View f15427a;

        /* renamed from: b */
        public final List<SizeReadyCallback> f15428b = new ArrayList();

        /* renamed from: c */
        public boolean f15429c;

        /* renamed from: d */
        @Nullable
        public a f15430d;

        /* renamed from: com.bumptech.glide.request.target.ViewTarget$b$a */
        /* loaded from: classes3.dex */
        public static final class a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: e */
            public final WeakReference<C2031b> f15431e;

            public a(@NonNull C2031b c2031b) {
                this.f15431e = new WeakReference<>(c2031b);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable(ViewTarget.f15417j, 2)) {
                    Log.v(ViewTarget.f15417j, "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                C2031b c2031b = this.f15431e.get();
                if (c2031b == null) {
                    return true;
                }
                c2031b.m9157a();
                return true;
            }
        }

        public C2031b(@NonNull View view) {
            this.f15427a = view;
        }

        /* renamed from: c */
        public static int m9156c(@NonNull Context context) {
            if (f15426f == null) {
                Display defaultDisplay = ((WindowManager) Preconditions.checkNotNull((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f15426f = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f15426f.intValue();
        }

        /* renamed from: a */
        public void m9157a() {
            if (this.f15428b.isEmpty()) {
                return;
            }
            int m9162g = m9162g();
            int m9161f = m9161f();
            if (m9164i(m9162g, m9161f)) {
                m9165j(m9162g, m9161f);
                m9158b();
            }
        }

        /* renamed from: b */
        public void m9158b() {
            ViewTreeObserver viewTreeObserver = this.f15427a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f15430d);
            }
            this.f15430d = null;
            this.f15428b.clear();
        }

        /* renamed from: d */
        public void m9159d(@NonNull SizeReadyCallback sizeReadyCallback) {
            int m9162g = m9162g();
            int m9161f = m9161f();
            if (m9164i(m9162g, m9161f)) {
                sizeReadyCallback.onSizeReady(m9162g, m9161f);
                return;
            }
            if (!this.f15428b.contains(sizeReadyCallback)) {
                this.f15428b.add(sizeReadyCallback);
            }
            if (this.f15430d == null) {
                ViewTreeObserver viewTreeObserver = this.f15427a.getViewTreeObserver();
                a aVar = new a(this);
                this.f15430d = aVar;
                viewTreeObserver.addOnPreDrawListener(aVar);
            }
        }

        /* renamed from: e */
        public final int m9160e(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            if (this.f15429c && this.f15427a.isLayoutRequested()) {
                return 0;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            if (this.f15427a.isLayoutRequested() || i2 != -2) {
                return 0;
            }
            if (Log.isLoggable(ViewTarget.f15417j, 4)) {
                Log.i(ViewTarget.f15417j, "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            return m9156c(this.f15427a.getContext());
        }

        /* renamed from: f */
        public final int m9161f() {
            int paddingTop = this.f15427a.getPaddingTop() + this.f15427a.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f15427a.getLayoutParams();
            return m9160e(this.f15427a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop);
        }

        /* renamed from: g */
        public final int m9162g() {
            int paddingLeft = this.f15427a.getPaddingLeft() + this.f15427a.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f15427a.getLayoutParams();
            return m9160e(this.f15427a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft);
        }

        /* renamed from: h */
        public final boolean m9163h(int i) {
            return i > 0 || i == Integer.MIN_VALUE;
        }

        /* renamed from: i */
        public final boolean m9164i(int i, int i2) {
            return m9163h(i) && m9163h(i2);
        }

        /* renamed from: j */
        public final void m9165j(int i, int i2) {
            Iterator it2 = new ArrayList(this.f15428b).iterator();
            while (it2.hasNext()) {
                ((SizeReadyCallback) it2.next()).onSizeReady(i, i2);
            }
        }

        /* renamed from: k */
        public void m9166k(@NonNull SizeReadyCallback sizeReadyCallback) {
            this.f15428b.remove(sizeReadyCallback);
        }
    }

    public ViewTarget(@NonNull T t) {
        this.view = (T) Preconditions.checkNotNull(t);
        this.f15420f = new C2031b(t);
    }

    @Deprecated
    public static void setTagId(int i) {
        if (f15418k) {
            throw new IllegalArgumentException("You cannot set the tag id more than once or change the tag id after the first request has been made");
        }
        f15419l = i;
    }

    @Nullable
    /* renamed from: a */
    public final Object m9150a() {
        return this.view.getTag(f15419l);
    }

    /* renamed from: b */
    public final void m9151b() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f15421g;
        if (onAttachStateChangeListener == null || this.f15423i) {
            return;
        }
        this.view.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f15423i = true;
    }

    /* renamed from: c */
    public final void m9152c() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f15421g;
        if (onAttachStateChangeListener == null || !this.f15423i) {
            return;
        }
        this.view.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f15423i = false;
    }

    @NonNull
    public final ViewTarget<T, Z> clearOnDetach() {
        if (this.f15421g != null) {
            return this;
        }
        this.f15421g = new ViewOnAttachStateChangeListenerC2030a();
        m9151b();
        return this;
    }

    /* renamed from: d */
    public void m9153d() {
        Request request = getRequest();
        if (request != null) {
            this.f15422h = true;
            request.clear();
            this.f15422h = false;
        }
    }

    /* renamed from: e */
    public void m9154e() {
        Request request = getRequest();
        if (request == null || !request.isCleared()) {
            return;
        }
        request.begin();
    }

    /* renamed from: f */
    public final void m9155f(@Nullable Object obj) {
        f15418k = true;
        this.view.setTag(f15419l, obj);
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    @Nullable
    public Request getRequest() {
        Object m9150a = m9150a();
        if (m9150a == null) {
            return null;
        }
        if (m9150a instanceof Request) {
            return (Request) m9150a;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    @Override // com.bumptech.glide.request.target.Target
    @CallSuper
    public void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
        this.f15420f.m9159d(sizeReadyCallback);
    }

    @NonNull
    public T getView() {
        return this.view;
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    @CallSuper
    public void onLoadCleared(@Nullable Drawable drawable) {
        super.onLoadCleared(drawable);
        this.f15420f.m9158b();
        if (this.f15422h) {
            return;
        }
        m9152c();
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    @CallSuper
    public void onLoadStarted(@Nullable Drawable drawable) {
        super.onLoadStarted(drawable);
        m9151b();
    }

    @Override // com.bumptech.glide.request.target.Target
    @CallSuper
    public void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
        this.f15420f.m9166k(sizeReadyCallback);
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public void setRequest(@Nullable Request request) {
        m9155f(request);
    }

    public String toString() {
        return "Target for: " + this.view;
    }

    @NonNull
    public final ViewTarget<T, Z> waitForLayout() {
        this.f15420f.f15429c = true;
        return this;
    }

    @Deprecated
    public ViewTarget(@NonNull T t, boolean z) {
        this(t);
        if (z) {
            waitForLayout();
        }
    }
}
