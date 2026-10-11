package androidx.core.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContentInfo;
import android.view.Display;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.autofill.AutofillId;
import android.view.contentcapture.ContentCaptureSession;
import androidx.annotation.DoNotInline;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.collection.SimpleArrayMap;
import androidx.core.C0512R;
import androidx.core.util.Preconditions;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.core.view.autofill.AutofillIdCompat;
import androidx.core.view.contentcapture.ContentCaptureSessionCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import org.apache.commons.collections4.IteratorUtils;

@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes3.dex */
public class ViewCompat {
    public static final int ACCESSIBILITY_LIVE_REGION_ASSERTIVE = 2;
    public static final int ACCESSIBILITY_LIVE_REGION_NONE = 0;
    public static final int ACCESSIBILITY_LIVE_REGION_POLITE = 1;

    @Deprecated
    public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;

    @Deprecated
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;

    @Deprecated
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS = 4;

    @Deprecated
    public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;
    public static final int IMPORTANT_FOR_CONTENT_CAPTURE_AUTO = 0;
    public static final int IMPORTANT_FOR_CONTENT_CAPTURE_NO = 2;
    public static final int IMPORTANT_FOR_CONTENT_CAPTURE_NO_EXCLUDE_DESCENDANTS = 8;
    public static final int IMPORTANT_FOR_CONTENT_CAPTURE_YES = 1;
    public static final int IMPORTANT_FOR_CONTENT_CAPTURE_YES_EXCLUDE_DESCENDANTS = 4;

    @Deprecated
    public static final int LAYER_TYPE_HARDWARE = 2;

    @Deprecated
    public static final int LAYER_TYPE_NONE = 0;

    @Deprecated
    public static final int LAYER_TYPE_SOFTWARE = 1;

    @Deprecated
    public static final int LAYOUT_DIRECTION_INHERIT = 2;

    @Deprecated
    public static final int LAYOUT_DIRECTION_LOCALE = 3;

    @Deprecated
    public static final int LAYOUT_DIRECTION_LTR = 0;

    @Deprecated
    public static final int LAYOUT_DIRECTION_RTL = 1;

    @Deprecated
    public static final int MEASURED_HEIGHT_STATE_SHIFT = 16;

    @Deprecated
    public static final int MEASURED_SIZE_MASK = 16777215;

    @Deprecated
    public static final int MEASURED_STATE_MASK = -16777216;

    @Deprecated
    public static final int MEASURED_STATE_TOO_SMALL = 16777216;

    @Deprecated
    public static final int OVER_SCROLL_ALWAYS = 0;

    @Deprecated
    public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;

    @Deprecated
    public static final int OVER_SCROLL_NEVER = 2;
    public static final int SCROLL_AXIS_HORIZONTAL = 1;
    public static final int SCROLL_AXIS_NONE = 0;
    public static final int SCROLL_AXIS_VERTICAL = 2;
    public static final int SCROLL_INDICATOR_BOTTOM = 2;
    public static final int SCROLL_INDICATOR_END = 32;
    public static final int SCROLL_INDICATOR_LEFT = 4;
    public static final int SCROLL_INDICATOR_RIGHT = 8;
    public static final int SCROLL_INDICATOR_START = 16;
    public static final int SCROLL_INDICATOR_TOP = 1;
    public static final int TYPE_NON_TOUCH = 1;
    public static final int TYPE_TOUCH = 0;

    /* renamed from: a */
    public static final String f5868a = "ViewCompat";

    /* renamed from: b */
    public static Method f5869b;

    /* renamed from: c */
    public static Method f5870c;

    /* renamed from: d */
    public static boolean f5871d;

    /* renamed from: e */
    public static WeakHashMap<View, String> f5872e;

    /* renamed from: f */
    public static WeakHashMap<View, ViewPropertyAnimatorCompat> f5873f;

    /* renamed from: g */
    public static Method f5874g;

    /* renamed from: h */
    public static Field f5875h;

    /* renamed from: i */
    public static boolean f5876i;

    /* renamed from: j */
    public static ThreadLocal<Rect> f5877j;

    /* renamed from: k */
    public static final int[] f5878k = {C0512R.id.accessibility_custom_action_0, C0512R.id.accessibility_custom_action_1, C0512R.id.accessibility_custom_action_2, C0512R.id.accessibility_custom_action_3, C0512R.id.accessibility_custom_action_4, C0512R.id.accessibility_custom_action_5, C0512R.id.accessibility_custom_action_6, C0512R.id.accessibility_custom_action_7, C0512R.id.accessibility_custom_action_8, C0512R.id.accessibility_custom_action_9, C0512R.id.accessibility_custom_action_10, C0512R.id.accessibility_custom_action_11, C0512R.id.accessibility_custom_action_12, C0512R.id.accessibility_custom_action_13, C0512R.id.accessibility_custom_action_14, C0512R.id.accessibility_custom_action_15, C0512R.id.accessibility_custom_action_16, C0512R.id.accessibility_custom_action_17, C0512R.id.accessibility_custom_action_18, C0512R.id.accessibility_custom_action_19, C0512R.id.accessibility_custom_action_20, C0512R.id.accessibility_custom_action_21, C0512R.id.accessibility_custom_action_22, C0512R.id.accessibility_custom_action_23, C0512R.id.accessibility_custom_action_24, C0512R.id.accessibility_custom_action_25, C0512R.id.accessibility_custom_action_26, C0512R.id.accessibility_custom_action_27, C0512R.id.accessibility_custom_action_28, C0512R.id.accessibility_custom_action_29, C0512R.id.accessibility_custom_action_30, C0512R.id.accessibility_custom_action_31};

    /* renamed from: l */
    public static final OnReceiveContentViewBehavior f5879l = new OnReceiveContentViewBehavior() { // from class: com.sunia.HTREnginev2.z1o
        @Override // androidx.core.view.OnReceiveContentViewBehavior
        public final ContentInfoCompat onReceiveContent(ContentInfoCompat contentInfoCompat) {
            ContentInfoCompat m3385p;
            m3385p = ViewCompat.m3385p(contentInfoCompat);
            return m3385p;
        }
    };

    /* renamed from: m */
    public static final ViewTreeObserverOnGlobalLayoutListenerC0784e f5880m = new ViewTreeObserverOnGlobalLayoutListenerC0784e();

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface FocusDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface FocusRealDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface FocusRelativeDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface NestedScrollType {
    }

    /* loaded from: classes3.dex */
    public interface OnUnhandledKeyEventListenerCompat {
        boolean onUnhandledKeyEvent(@NonNull View view, @NonNull KeyEvent keyEvent);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface ScrollAxis {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface ScrollIndicators {
    }

    /* renamed from: androidx.core.view.ViewCompat$a */
    /* loaded from: classes3.dex */
    public class C0780a extends AbstractC0785f<Boolean> {
        public C0780a(int i, Class cls, int i2) {
            super(i, cls, i2);
        }

        @Override // androidx.core.view.ViewCompat.AbstractC0785f
        @RequiresApi(28)
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public Boolean mo3393c(@NonNull View view) {
            return Boolean.valueOf(C0791l.m3475d(view));
        }

        @Override // androidx.core.view.ViewCompat.AbstractC0785f
        @RequiresApi(28)
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public void mo3394d(@NonNull View view, Boolean bool) {
            C0791l.m3481j(view, bool.booleanValue());
        }

        @Override // androidx.core.view.ViewCompat.AbstractC0785f
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public boolean mo3395g(Boolean bool, Boolean bool2) {
            return !m3413a(bool, bool2);
        }
    }

    /* renamed from: androidx.core.view.ViewCompat$b */
    /* loaded from: classes3.dex */
    public class C0781b extends AbstractC0785f<CharSequence> {
        public C0781b(int i, Class cls, int i2, int i3) {
            super(i, cls, i2, i3);
        }

        @Override // androidx.core.view.ViewCompat.AbstractC0785f
        @RequiresApi(28)
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public CharSequence mo3393c(View view) {
            return C0791l.m3473b(view);
        }

        @Override // androidx.core.view.ViewCompat.AbstractC0785f
        @RequiresApi(28)
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public void mo3394d(View view, CharSequence charSequence) {
            C0791l.m3479h(view, charSequence);
        }

        @Override // androidx.core.view.ViewCompat.AbstractC0785f
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public boolean mo3395g(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    /* renamed from: androidx.core.view.ViewCompat$c */
    /* loaded from: classes3.dex */
    public class C0782c extends AbstractC0785f<CharSequence> {
        public C0782c(int i, Class cls, int i2, int i3) {
            super(i, cls, i2, i3);
        }

        @Override // androidx.core.view.ViewCompat.AbstractC0785f
        @RequiresApi(30)
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public CharSequence mo3393c(View view) {
            return C0793n.m3489b(view);
        }

        @Override // androidx.core.view.ViewCompat.AbstractC0785f
        @RequiresApi(30)
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public void mo3394d(View view, CharSequence charSequence) {
            C0793n.m3493f(view, charSequence);
        }

        @Override // androidx.core.view.ViewCompat.AbstractC0785f
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public boolean mo3395g(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    /* renamed from: androidx.core.view.ViewCompat$d */
    /* loaded from: classes3.dex */
    public class C0783d extends AbstractC0785f<Boolean> {
        public C0783d(int i, Class cls, int i2) {
            super(i, cls, i2);
        }

        @Override // androidx.core.view.ViewCompat.AbstractC0785f
        @RequiresApi(28)
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public Boolean mo3393c(View view) {
            return Boolean.valueOf(C0791l.m3474c(view));
        }

        @Override // androidx.core.view.ViewCompat.AbstractC0785f
        @RequiresApi(28)
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public void mo3394d(View view, Boolean bool) {
            C0791l.m3478g(view, bool.booleanValue());
        }

        @Override // androidx.core.view.ViewCompat.AbstractC0785f
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public boolean mo3395g(Boolean bool, Boolean bool2) {
            return !m3413a(bool, bool2);
        }
    }

    /* renamed from: androidx.core.view.ViewCompat$e */
    /* loaded from: classes3.dex */
    public static class ViewTreeObserverOnGlobalLayoutListenerC0784e implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* renamed from: e */
        public final WeakHashMap<View, Boolean> f5881e = new WeakHashMap<>();

        /* renamed from: a */
        public void m3408a(View view) {
            this.f5881e.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(this);
            if (view.isAttachedToWindow()) {
                m3410c(view);
            }
        }

        /* renamed from: b */
        public final void m3409b(Map.Entry<View, Boolean> entry) {
            View key = entry.getKey();
            boolean booleanValue = entry.getValue().booleanValue();
            boolean z = key.isShown() && key.getWindowVisibility() == 0;
            if (booleanValue != z) {
                ViewCompat.m3386q(key, z ? 16 : 32);
                entry.setValue(Boolean.valueOf(z));
            }
        }

        /* renamed from: c */
        public final void m3410c(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        /* renamed from: d */
        public void m3411d(View view) {
            this.f5881e.remove(view);
            view.removeOnAttachStateChangeListener(this);
            m3412e(view);
        }

        /* renamed from: e */
        public final void m3412e(View view) {
            view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            m3410c(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* renamed from: androidx.core.view.ViewCompat$f */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC0785f<T> {

        /* renamed from: a */
        public final int f5882a;

        /* renamed from: b */
        public final Class<T> f5883b;

        /* renamed from: c */
        public final int f5884c;

        /* renamed from: d */
        public final int f5885d;

        public AbstractC0785f(int i, Class<T> cls, int i2) {
            this(i, cls, 0, i2);
        }

        /* renamed from: a */
        public boolean m3413a(Boolean bool, Boolean bool2) {
            return (bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue());
        }

        /* renamed from: b */
        public final boolean m3414b() {
            return Build.VERSION.SDK_INT >= this.f5884c;
        }

        /* renamed from: c */
        public abstract T mo3393c(View view);

        /* renamed from: d */
        public abstract void mo3394d(View view, T t);

        /* renamed from: e */
        public T m3415e(View view) {
            if (m3414b()) {
                return mo3393c(view);
            }
            T t = (T) view.getTag(this.f5882a);
            if (this.f5883b.isInstance(t)) {
                return t;
            }
            return null;
        }

        /* renamed from: f */
        public void m3416f(View view, T t) {
            if (m3414b()) {
                mo3394d(view, t);
            } else if (mo3395g(m3415e(view), t)) {
                ViewCompat.m3378i(view);
                view.setTag(this.f5882a, t);
                ViewCompat.m3386q(view, this.f5885d);
            }
        }

        /* renamed from: g */
        public boolean mo3395g(T t, T t2) {
            return !t2.equals(t);
        }

        public AbstractC0785f(int i, Class<T> cls, int i2, int i3) {
            this.f5882a = i;
            this.f5883b = cls;
            this.f5885d = i2;
            this.f5884c = i3;
        }
    }

    @RequiresApi(20)
    /* renamed from: androidx.core.view.ViewCompat$g */
    /* loaded from: classes3.dex */
    public static class C0786g {
        private C0786g() {
        }

        @DoNotInline
        /* renamed from: a */
        public static WindowInsets m3417a(View view, WindowInsets windowInsets) {
            return view.dispatchApplyWindowInsets(windowInsets);
        }

        @DoNotInline
        /* renamed from: b */
        public static WindowInsets m3418b(View view, WindowInsets windowInsets) {
            return view.onApplyWindowInsets(windowInsets);
        }

        @DoNotInline
        /* renamed from: c */
        public static void m3419c(View view) {
            view.requestApplyInsets();
        }
    }

    @RequiresApi(21)
    /* renamed from: androidx.core.view.ViewCompat$h */
    /* loaded from: classes3.dex */
    public static class C0787h {

        /* renamed from: androidx.core.view.ViewCompat$h$a */
        /* loaded from: classes3.dex */
        public class a implements View.OnApplyWindowInsetsListener {

            /* renamed from: a */
            public WindowInsetsCompat f5886a = null;

            /* renamed from: b */
            public final /* synthetic */ View f5887b;

            /* renamed from: c */
            public final /* synthetic */ OnApplyWindowInsetsListener f5888c;

            public a(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
                this.f5887b = view;
                this.f5888c = onApplyWindowInsetsListener;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                int i = Build.VERSION.SDK_INT;
                if (i < 30) {
                    C0787h.m3420a(windowInsets, this.f5887b);
                    if (windowInsetsCompat.equals(this.f5886a)) {
                        return this.f5888c.onApplyWindowInsets(view, windowInsetsCompat).toWindowInsets();
                    }
                }
                this.f5886a = windowInsetsCompat;
                WindowInsetsCompat onApplyWindowInsets = this.f5888c.onApplyWindowInsets(view, windowInsetsCompat);
                if (i >= 30) {
                    return onApplyWindowInsets.toWindowInsets();
                }
                ViewCompat.requestApplyInsets(view);
                return onApplyWindowInsets.toWindowInsets();
            }
        }

        private C0787h() {
        }

        @DoNotInline
        /* renamed from: a */
        public static void m3420a(@NonNull WindowInsets windowInsets, @NonNull View view) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(C0512R.id.tag_window_insets_animation_callback);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        @DoNotInline
        /* renamed from: b */
        public static WindowInsetsCompat m3421b(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Rect rect) {
            WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
            if (windowInsets != null) {
                return WindowInsetsCompat.toWindowInsetsCompat(view.computeSystemWindowInsets(windowInsets, rect), view);
            }
            rect.setEmpty();
            return windowInsetsCompat;
        }

        @DoNotInline
        /* renamed from: c */
        public static boolean m3422c(@NonNull View view, float f, float f2, boolean z) {
            return view.dispatchNestedFling(f, f2, z);
        }

        @DoNotInline
        /* renamed from: d */
        public static boolean m3423d(@NonNull View view, float f, float f2) {
            return view.dispatchNestedPreFling(f, f2);
        }

        @DoNotInline
        /* renamed from: e */
        public static boolean m3424e(View view, int i, int i2, int[] iArr, int[] iArr2) {
            return view.dispatchNestedPreScroll(i, i2, iArr, iArr2);
        }

        @DoNotInline
        /* renamed from: f */
        public static boolean m3425f(View view, int i, int i2, int i3, int i4, int[] iArr) {
            return view.dispatchNestedScroll(i, i2, i3, i4, iArr);
        }

        @DoNotInline
        /* renamed from: g */
        public static ColorStateList m3426g(View view) {
            return view.getBackgroundTintList();
        }

        @DoNotInline
        /* renamed from: h */
        public static PorterDuff.Mode m3427h(View view) {
            return view.getBackgroundTintMode();
        }

        @DoNotInline
        /* renamed from: i */
        public static float m3428i(View view) {
            return view.getElevation();
        }

        @Nullable
        @DoNotInline
        /* renamed from: j */
        public static WindowInsetsCompat m3429j(@NonNull View view) {
            return WindowInsetsCompat.C0813a.m3593a(view);
        }

        @DoNotInline
        /* renamed from: k */
        public static String m3430k(View view) {
            return view.getTransitionName();
        }

        @DoNotInline
        /* renamed from: l */
        public static float m3431l(View view) {
            return view.getTranslationZ();
        }

        @DoNotInline
        /* renamed from: m */
        public static float m3432m(@NonNull View view) {
            return view.getZ();
        }

        @DoNotInline
        /* renamed from: n */
        public static boolean m3433n(View view) {
            return view.hasNestedScrollingParent();
        }

        @DoNotInline
        /* renamed from: o */
        public static boolean m3434o(View view) {
            return view.isImportantForAccessibility();
        }

        @DoNotInline
        /* renamed from: p */
        public static boolean m3435p(View view) {
            return view.isNestedScrollingEnabled();
        }

        @DoNotInline
        /* renamed from: q */
        public static void m3436q(View view, ColorStateList colorStateList) {
            view.setBackgroundTintList(colorStateList);
        }

        @DoNotInline
        /* renamed from: r */
        public static void m3437r(View view, PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
        }

        @DoNotInline
        /* renamed from: s */
        public static void m3438s(View view, float f) {
            view.setElevation(f);
        }

        @DoNotInline
        /* renamed from: t */
        public static void m3439t(View view, boolean z) {
            view.setNestedScrollingEnabled(z);
        }

        @DoNotInline
        /* renamed from: u */
        public static void m3440u(@NonNull View view, @Nullable OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(C0512R.id.tag_on_apply_window_listener, onApplyWindowInsetsListener);
            }
            if (onApplyWindowInsetsListener == null) {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(C0512R.id.tag_window_insets_animation_callback));
            } else {
                view.setOnApplyWindowInsetsListener(new a(view, onApplyWindowInsetsListener));
            }
        }

        @DoNotInline
        /* renamed from: v */
        public static void m3441v(View view, String str) {
            view.setTransitionName(str);
        }

        @DoNotInline
        /* renamed from: w */
        public static void m3442w(View view, float f) {
            view.setTranslationZ(f);
        }

        @DoNotInline
        /* renamed from: x */
        public static void m3443x(@NonNull View view, float f) {
            view.setZ(f);
        }

        @DoNotInline
        /* renamed from: y */
        public static boolean m3444y(View view, int i) {
            return view.startNestedScroll(i);
        }

        @DoNotInline
        /* renamed from: z */
        public static void m3445z(View view) {
            view.stopNestedScroll();
        }
    }

    @RequiresApi(23)
    /* renamed from: androidx.core.view.ViewCompat$i */
    /* loaded from: classes3.dex */
    public static class C0788i {
        private C0788i() {
        }

        @Nullable
        /* renamed from: a */
        public static WindowInsetsCompat m3446a(@NonNull View view) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(rootWindowInsets);
            windowInsetsCompat.m3589e(windowInsetsCompat);
            windowInsetsCompat.m3586a(view.getRootView());
            return windowInsetsCompat;
        }

        @DoNotInline
        /* renamed from: b */
        public static int m3447b(@NonNull View view) {
            return view.getScrollIndicators();
        }

        @DoNotInline
        /* renamed from: c */
        public static void m3448c(@NonNull View view, int i) {
            view.setScrollIndicators(i);
        }

        @DoNotInline
        /* renamed from: d */
        public static void m3449d(@NonNull View view, int i, int i2) {
            view.setScrollIndicators(i, i2);
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.view.ViewCompat$j */
    /* loaded from: classes3.dex */
    public static class C0789j {
        private C0789j() {
        }

        @DoNotInline
        /* renamed from: a */
        public static void m3450a(@NonNull View view) {
            view.cancelDragAndDrop();
        }

        @DoNotInline
        /* renamed from: b */
        public static void m3451b(View view) {
            view.dispatchFinishTemporaryDetach();
        }

        @DoNotInline
        /* renamed from: c */
        public static void m3452c(View view) {
            view.dispatchStartTemporaryDetach();
        }

        @DoNotInline
        /* renamed from: d */
        public static void m3453d(@NonNull View view, PointerIcon pointerIcon) {
            view.setPointerIcon(pointerIcon);
        }

        @DoNotInline
        /* renamed from: e */
        public static boolean m3454e(@NonNull View view, @Nullable ClipData clipData, @NonNull View.DragShadowBuilder dragShadowBuilder, @Nullable Object obj, int i) {
            return view.startDragAndDrop(clipData, dragShadowBuilder, obj, i);
        }

        @DoNotInline
        /* renamed from: f */
        public static void m3455f(@NonNull View view, @NonNull View.DragShadowBuilder dragShadowBuilder) {
            view.updateDragShadow(dragShadowBuilder);
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.view.ViewCompat$k */
    /* loaded from: classes3.dex */
    public static class C0790k {
        private C0790k() {
        }

        @DoNotInline
        /* renamed from: a */
        public static void m3456a(@NonNull View view, Collection<View> collection, int i) {
            view.addKeyboardNavigationClusters(collection, i);
        }

        @DoNotInline
        /* renamed from: b */
        public static AutofillId m3457b(View view) {
            return view.getAutofillId();
        }

        @DoNotInline
        /* renamed from: c */
        public static int m3458c(View view) {
            return view.getImportantForAutofill();
        }

        @DoNotInline
        /* renamed from: d */
        public static int m3459d(@NonNull View view) {
            return view.getNextClusterForwardId();
        }

        @DoNotInline
        /* renamed from: e */
        public static boolean m3460e(@NonNull View view) {
            return view.hasExplicitFocusable();
        }

        @DoNotInline
        /* renamed from: f */
        public static boolean m3461f(@NonNull View view) {
            return view.isFocusedByDefault();
        }

        @DoNotInline
        /* renamed from: g */
        public static boolean m3462g(View view) {
            return view.isImportantForAutofill();
        }

        @DoNotInline
        /* renamed from: h */
        public static boolean m3463h(@NonNull View view) {
            return view.isKeyboardNavigationCluster();
        }

        @DoNotInline
        /* renamed from: i */
        public static View m3464i(@NonNull View view, View view2, int i) {
            return view.keyboardNavigationClusterSearch(view2, i);
        }

        @DoNotInline
        /* renamed from: j */
        public static boolean m3465j(@NonNull View view) {
            return view.restoreDefaultFocus();
        }

        @DoNotInline
        /* renamed from: k */
        public static void m3466k(@NonNull View view, String... strArr) {
            view.setAutofillHints(strArr);
        }

        @DoNotInline
        /* renamed from: l */
        public static void m3467l(@NonNull View view, boolean z) {
            view.setFocusedByDefault(z);
        }

        @DoNotInline
        /* renamed from: m */
        public static void m3468m(View view, int i) {
            view.setImportantForAutofill(i);
        }

        @DoNotInline
        /* renamed from: n */
        public static void m3469n(@NonNull View view, boolean z) {
            view.setKeyboardNavigationCluster(z);
        }

        @DoNotInline
        /* renamed from: o */
        public static void m3470o(View view, int i) {
            view.setNextClusterForwardId(i);
        }

        @DoNotInline
        /* renamed from: p */
        public static void m3471p(@NonNull View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.core.view.ViewCompat$l */
    /* loaded from: classes3.dex */
    public static class C0791l {
        private C0791l() {
        }

        @DoNotInline
        /* renamed from: a */
        public static void m3472a(@NonNull View view, @NonNull final OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) view.getTag(C0512R.id.tag_unhandled_key_listeners);
            if (simpleArrayMap == null) {
                simpleArrayMap = new SimpleArrayMap();
                view.setTag(C0512R.id.tag_unhandled_key_listeners, simpleArrayMap);
            }
            Objects.requireNonNull(onUnhandledKeyEventListenerCompat);
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener = new View.OnUnhandledKeyEventListener() { // from class: com.sunia.HTREnginev2.a2o
                @Override // android.view.View.OnUnhandledKeyEventListener
                public final boolean onUnhandledKeyEvent(View view2, KeyEvent keyEvent) {
                    return ViewCompat.OnUnhandledKeyEventListenerCompat.this.onUnhandledKeyEvent(view2, keyEvent);
                }
            };
            simpleArrayMap.put(onUnhandledKeyEventListenerCompat, onUnhandledKeyEventListener);
            view.addOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        @DoNotInline
        /* renamed from: b */
        public static CharSequence m3473b(View view) {
            return view.getAccessibilityPaneTitle();
        }

        @DoNotInline
        /* renamed from: c */
        public static boolean m3474c(View view) {
            return view.isAccessibilityHeading();
        }

        @DoNotInline
        /* renamed from: d */
        public static boolean m3475d(View view) {
            return view.isScreenReaderFocusable();
        }

        @DoNotInline
        /* renamed from: e */
        public static void m3476e(@NonNull View view, @NonNull OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) view.getTag(C0512R.id.tag_unhandled_key_listeners);
            if (simpleArrayMap == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) simpleArrayMap.get(onUnhandledKeyEventListenerCompat)) == null) {
                return;
            }
            view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        @DoNotInline
        /* renamed from: f */
        public static <T> T m3477f(View view, int i) {
            return (T) view.requireViewById(i);
        }

        @DoNotInline
        /* renamed from: g */
        public static void m3478g(View view, boolean z) {
            view.setAccessibilityHeading(z);
        }

        @DoNotInline
        /* renamed from: h */
        public static void m3479h(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        @DoNotInline
        /* renamed from: i */
        public static void m3480i(View view, AutofillIdCompat autofillIdCompat) {
            view.setAutofillId(autofillIdCompat == null ? null : autofillIdCompat.toAutofillId());
        }

        @DoNotInline
        /* renamed from: j */
        public static void m3481j(View view, boolean z) {
            view.setScreenReaderFocusable(z);
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.core.view.ViewCompat$m */
    /* loaded from: classes3.dex */
    public static class C0792m {
        private C0792m() {
        }

        @DoNotInline
        /* renamed from: a */
        public static View.AccessibilityDelegate m3482a(View view) {
            return view.getAccessibilityDelegate();
        }

        @DoNotInline
        /* renamed from: b */
        public static ContentCaptureSession m3483b(View view) {
            return view.getContentCaptureSession();
        }

        @DoNotInline
        /* renamed from: c */
        public static List<Rect> m3484c(View view) {
            return view.getSystemGestureExclusionRects();
        }

        @DoNotInline
        /* renamed from: d */
        public static void m3485d(@NonNull View view, @NonNull Context context, @NonNull int[] iArr, @Nullable AttributeSet attributeSet, @NonNull TypedArray typedArray, int i, int i2) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
        }

        @DoNotInline
        /* renamed from: e */
        public static void m3486e(View view, ContentCaptureSessionCompat contentCaptureSessionCompat) {
            view.setContentCaptureSession(contentCaptureSessionCompat == null ? null : contentCaptureSessionCompat.toContentCaptureSession());
        }

        @DoNotInline
        /* renamed from: f */
        public static void m3487f(View view, List<Rect> list) {
            view.setSystemGestureExclusionRects(list);
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.view.ViewCompat$n */
    /* loaded from: classes3.dex */
    public static class C0793n {
        private C0793n() {
        }

        @DoNotInline
        /* renamed from: a */
        public static int m3488a(View view) {
            return view.getImportantForContentCapture();
        }

        @DoNotInline
        /* renamed from: b */
        public static CharSequence m3489b(View view) {
            return view.getStateDescription();
        }

        @Nullable
        /* renamed from: c */
        public static WindowInsetsControllerCompat m3490c(@NonNull View view) {
            WindowInsetsController windowInsetsController = view.getWindowInsetsController();
            if (windowInsetsController != null) {
                return WindowInsetsControllerCompat.toWindowInsetsControllerCompat(windowInsetsController);
            }
            return null;
        }

        @DoNotInline
        /* renamed from: d */
        public static boolean m3491d(View view) {
            return view.isImportantForContentCapture();
        }

        @DoNotInline
        /* renamed from: e */
        public static void m3492e(View view, int i) {
            view.setImportantForContentCapture(i);
        }

        @DoNotInline
        /* renamed from: f */
        public static void m3493f(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }
    }

    @RequiresApi(31)
    /* renamed from: androidx.core.view.ViewCompat$o */
    /* loaded from: classes3.dex */
    public static final class C0794o {
        private C0794o() {
        }

        @Nullable
        @DoNotInline
        /* renamed from: a */
        public static String[] m3494a(@NonNull View view) {
            return view.getReceiveContentMimeTypes();
        }

        @Nullable
        @DoNotInline
        /* renamed from: b */
        public static ContentInfoCompat m3495b(@NonNull View view, @NonNull ContentInfoCompat contentInfoCompat) {
            ContentInfo contentInfo = contentInfoCompat.toContentInfo();
            ContentInfo performReceiveContent = view.performReceiveContent(contentInfo);
            if (performReceiveContent == null) {
                return null;
            }
            return performReceiveContent == contentInfo ? contentInfoCompat : ContentInfoCompat.toContentInfoCompat(performReceiveContent);
        }

        @DoNotInline
        /* renamed from: c */
        public static void m3496c(@NonNull View view, @Nullable String[] strArr, @Nullable OnReceiveContentListener onReceiveContentListener) {
            if (onReceiveContentListener == null) {
                view.setOnReceiveContentListener(strArr, null);
            } else {
                view.setOnReceiveContentListener(strArr, new OnReceiveContentListenerC0795p(onReceiveContentListener));
            }
        }
    }

    @RequiresApi(31)
    /* renamed from: androidx.core.view.ViewCompat$p */
    /* loaded from: classes3.dex */
    public static final class OnReceiveContentListenerC0795p implements android.view.OnReceiveContentListener {

        /* renamed from: a */
        @NonNull
        public final OnReceiveContentListener f5889a;

        public OnReceiveContentListenerC0795p(@NonNull OnReceiveContentListener onReceiveContentListener) {
            this.f5889a = onReceiveContentListener;
        }

        @Nullable
        public ContentInfo onReceiveContent(@NonNull View view, @NonNull ContentInfo contentInfo) {
            ContentInfoCompat contentInfoCompat = ContentInfoCompat.toContentInfoCompat(contentInfo);
            ContentInfoCompat onReceiveContent = this.f5889a.onReceiveContent(view, contentInfoCompat);
            if (onReceiveContent == null) {
                return null;
            }
            return onReceiveContent == contentInfoCompat ? contentInfo : onReceiveContent.toContentInfo();
        }
    }

    /* renamed from: androidx.core.view.ViewCompat$q */
    /* loaded from: classes3.dex */
    public static class C0796q {

        /* renamed from: d */
        public static final ArrayList<WeakReference<View>> f5890d = new ArrayList<>();

        /* renamed from: a */
        @Nullable
        public WeakHashMap<View, Boolean> f5891a = null;

        /* renamed from: b */
        public SparseArray<WeakReference<View>> f5892b = null;

        /* renamed from: c */
        public WeakReference<KeyEvent> f5893c = null;

        /* renamed from: a */
        public static C0796q m3497a(View view) {
            C0796q c0796q = (C0796q) view.getTag(C0512R.id.tag_unhandled_key_event_manager);
            if (c0796q != null) {
                return c0796q;
            }
            C0796q c0796q2 = new C0796q();
            view.setTag(C0512R.id.tag_unhandled_key_event_manager, c0796q2);
            return c0796q2;
        }

        /* renamed from: h */
        public static void m3498h(View view) {
            ArrayList<WeakReference<View>> arrayList = f5890d;
            synchronized (arrayList) {
                Iterator<WeakReference<View>> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    if (it2.next().get() == view) {
                        return;
                    }
                }
                f5890d.add(new WeakReference<>(view));
            }
        }

        /* renamed from: i */
        public static void m3499i(View view) {
            synchronized (f5890d) {
                int i = 0;
                while (true) {
                    ArrayList<WeakReference<View>> arrayList = f5890d;
                    if (i >= arrayList.size()) {
                        return;
                    }
                    if (arrayList.get(i).get() == view) {
                        arrayList.remove(i);
                        return;
                    }
                    i++;
                }
            }
        }

        /* renamed from: b */
        public boolean m3500b(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                m3505g();
            }
            View m3501c = m3501c(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (m3501c != null && !KeyEvent.isModifierKey(keyCode)) {
                    m3502d().put(keyCode, new WeakReference<>(m3501c));
                }
            }
            return m3501c != null;
        }

        @Nullable
        /* renamed from: c */
        public final View m3501c(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f5891a;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View m3501c = m3501c(viewGroup.getChildAt(childCount), keyEvent);
                        if (m3501c != null) {
                            return m3501c;
                        }
                    }
                }
                if (m3503e(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        /* renamed from: d */
        public final SparseArray<WeakReference<View>> m3502d() {
            if (this.f5892b == null) {
                this.f5892b = new SparseArray<>();
            }
            return this.f5892b;
        }

        /* renamed from: e */
        public final boolean m3503e(@NonNull View view, @NonNull KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(C0512R.id.tag_unhandled_key_listeners);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((OnUnhandledKeyEventListenerCompat) arrayList.get(size)).onUnhandledKeyEvent(view, keyEvent)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: f */
        public boolean m3504f(KeyEvent keyEvent) {
            WeakReference<View> weakReference;
            int indexOfKey;
            WeakReference<KeyEvent> weakReference2 = this.f5893c;
            if (weakReference2 != null && weakReference2.get() == keyEvent) {
                return false;
            }
            this.f5893c = new WeakReference<>(keyEvent);
            SparseArray<WeakReference<View>> m3502d = m3502d();
            if (keyEvent.getAction() != 1 || (indexOfKey = m3502d.indexOfKey(keyEvent.getKeyCode())) < 0) {
                weakReference = null;
            } else {
                weakReference = m3502d.valueAt(indexOfKey);
                m3502d.removeAt(indexOfKey);
            }
            if (weakReference == null) {
                weakReference = m3502d.get(keyEvent.getKeyCode());
            }
            if (weakReference == null) {
                return false;
            }
            View view = weakReference.get();
            if (view != null && view.isAttachedToWindow()) {
                m3503e(view, keyEvent);
            }
            return true;
        }

        /* renamed from: g */
        public final void m3505g() {
            WeakHashMap<View, Boolean> weakHashMap = this.f5891a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList<WeakReference<View>> arrayList = f5890d;
            if (arrayList.isEmpty()) {
                return;
            }
            synchronized (arrayList) {
                if (this.f5891a == null) {
                    this.f5891a = new WeakHashMap<>();
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ArrayList<WeakReference<View>> arrayList2 = f5890d;
                    View view = arrayList2.get(size).get();
                    if (view == null) {
                        arrayList2.remove(size);
                    } else {
                        this.f5891a.put(view, Boolean.TRUE);
                        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                            this.f5891a.put((View) parent, Boolean.TRUE);
                        }
                    }
                }
            }
        }
    }

    @Deprecated
    public ViewCompat() {
    }

    public static int addAccessibilityAction(@NonNull View view, @NonNull CharSequence charSequence, @NonNull AccessibilityViewCommand accessibilityViewCommand) {
        int m3382m = m3382m(view, charSequence);
        if (m3382m != -1) {
            m3372c(view, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(m3382m, charSequence, accessibilityViewCommand));
        }
        return m3382m;
    }

    public static void addKeyboardNavigationClusters(@NonNull View view, @NonNull Collection<View> collection, int i) {
        C0790k.m3456a(view, collection, i);
    }

    public static void addOnUnhandledKeyEventListener(@NonNull View view, @NonNull OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
        C0791l.m3472a(view, onUnhandledKeyEventListenerCompat);
    }

    @NonNull
    @Deprecated
    public static ViewPropertyAnimatorCompat animate(@NonNull View view) {
        if (f5873f == null) {
            f5873f = new WeakHashMap<>();
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = f5873f.get(view);
        if (viewPropertyAnimatorCompat != null) {
            return viewPropertyAnimatorCompat;
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = new ViewPropertyAnimatorCompat(view);
        f5873f.put(view, viewPropertyAnimatorCompat2);
        return viewPropertyAnimatorCompat2;
    }

    /* renamed from: b */
    public static AbstractC0785f<Boolean> m3371b() {
        return new C0783d(C0512R.id.tag_accessibility_heading, Boolean.class, 28);
    }

    /* renamed from: c */
    public static void m3372c(@NonNull View view, @NonNull AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat) {
        m3378i(view);
        m3388s(accessibilityActionCompat.getId(), view);
        m3381l(view).add(accessibilityActionCompat);
        m3386q(view, 0);
    }

    @Deprecated
    public static boolean canScrollHorizontally(View view, int i) {
        return view.canScrollHorizontally(i);
    }

    @Deprecated
    public static boolean canScrollVertically(View view, int i) {
        return view.canScrollVertically(i);
    }

    public static void cancelDragAndDrop(@NonNull View view) {
        C0789j.m3450a(view);
    }

    @Deprecated
    public static int combineMeasuredStates(int i, int i2) {
        return View.combineMeasuredStates(i, i2);
    }

    @NonNull
    public static WindowInsetsCompat computeSystemWindowInsets(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Rect rect) {
        return C0787h.m3421b(view, windowInsetsCompat, rect);
    }

    /* renamed from: d */
    public static void m3373d() {
        try {
            f5869b = View.class.getDeclaredMethod("dispatchStartTemporaryDetach", new Class[0]);
            f5870c = View.class.getDeclaredMethod("dispatchFinishTemporaryDetach", new Class[0]);
        } catch (NoSuchMethodException e) {
            Log.e(f5868a, "Couldn't find method", e);
        }
        f5871d = true;
    }

    @NonNull
    public static WindowInsetsCompat dispatchApplyWindowInsets(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
        WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
        if (windowInsets != null) {
            WindowInsets m3417a = C0786g.m3417a(view, windowInsets);
            if (!m3417a.equals(windowInsets)) {
                return WindowInsetsCompat.toWindowInsetsCompat(m3417a, view);
            }
        }
        return windowInsetsCompat;
    }

    public static void dispatchFinishTemporaryDetach(@NonNull View view) {
        C0789j.m3451b(view);
    }

    public static boolean dispatchNestedFling(@NonNull View view, float f, float f2, boolean z) {
        return C0787h.m3422c(view, f, f2, z);
    }

    public static boolean dispatchNestedPreFling(@NonNull View view, float f, float f2) {
        return C0787h.m3423d(view, f, f2);
    }

    public static boolean dispatchNestedPreScroll(@NonNull View view, int i, int i2, @Nullable int[] iArr, @Nullable int[] iArr2) {
        return C0787h.m3424e(view, i, i2, iArr, iArr2);
    }

    public static boolean dispatchNestedScroll(@NonNull View view, int i, int i2, int i3, int i4, @Nullable int[] iArr) {
        return C0787h.m3425f(view, i, i2, i3, i4, iArr);
    }

    public static void dispatchStartTemporaryDetach(@NonNull View view) {
        C0789j.m3452c(view);
    }

    /* renamed from: e */
    public static void m3374e(View view, int i) {
        view.offsetLeftAndRight(i);
        if (view.getVisibility() == 0) {
            m3392w(view);
            Object parent = view.getParent();
            if (parent instanceof View) {
                m3392w((View) parent);
            }
        }
    }

    public static void enableAccessibleClickableSpanSupport(@NonNull View view) {
        m3378i(view);
    }

    /* renamed from: f */
    public static void m3375f(View view, int i) {
        view.offsetTopAndBottom(i);
        if (view.getVisibility() == 0) {
            m3392w(view);
            Object parent = view.getParent();
            if (parent instanceof View) {
                m3392w((View) parent);
            }
        }
    }

    @UiThread
    /* renamed from: g */
    public static boolean m3376g(View view, KeyEvent keyEvent) {
        return false;
    }

    @Deprecated
    public static int generateViewId() {
        return View.generateViewId();
    }

    @Nullable
    public static AccessibilityDelegateCompat getAccessibilityDelegate(@NonNull View view) {
        View.AccessibilityDelegate m3379j = m3379j(view);
        if (m3379j == null) {
            return null;
        }
        return m3379j instanceof AccessibilityDelegateCompat.C0754a ? ((AccessibilityDelegateCompat.C0754a) m3379j).f5785a : new AccessibilityDelegateCompat(m3379j);
    }

    @Deprecated
    public static int getAccessibilityLiveRegion(@NonNull View view) {
        return view.getAccessibilityLiveRegion();
    }

    @Nullable
    public static AccessibilityNodeProviderCompat getAccessibilityNodeProvider(@NonNull View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = view.getAccessibilityNodeProvider();
        if (accessibilityNodeProvider != null) {
            return new AccessibilityNodeProviderCompat(accessibilityNodeProvider);
        }
        return null;
    }

    @Nullable
    @UiThread
    public static CharSequence getAccessibilityPaneTitle(@NonNull View view) {
        return m3387r().m3415e(view);
    }

    @Deprecated
    public static float getAlpha(View view) {
        return view.getAlpha();
    }

    @Nullable
    public static AutofillIdCompat getAutofillId(@NonNull View view) {
        return AutofillIdCompat.toAutofillIdCompat(C0790k.m3457b(view));
    }

    @Nullable
    public static ColorStateList getBackgroundTintList(@NonNull View view) {
        return C0787h.m3426g(view);
    }

    @Nullable
    public static PorterDuff.Mode getBackgroundTintMode(@NonNull View view) {
        return C0787h.m3427h(view);
    }

    @Nullable
    @Deprecated
    public static Rect getClipBounds(@NonNull View view) {
        return view.getClipBounds();
    }

    @Nullable
    public static ContentCaptureSessionCompat getContentCaptureSession(@NonNull View view) {
        ContentCaptureSession m3483b = C0792m.m3483b(view);
        if (m3483b == null) {
            return null;
        }
        return ContentCaptureSessionCompat.toContentCaptureSessionCompat(m3483b, view);
    }

    @Nullable
    @Deprecated
    public static Display getDisplay(@NonNull View view) {
        return view.getDisplay();
    }

    public static float getElevation(@NonNull View view) {
        return C0787h.m3428i(view);
    }

    @Deprecated
    public static boolean getFitsSystemWindows(@NonNull View view) {
        return view.getFitsSystemWindows();
    }

    @Deprecated
    public static int getImportantForAccessibility(@NonNull View view) {
        return view.getImportantForAccessibility();
    }

    @SuppressLint({"InlinedApi"})
    public static int getImportantForAutofill(@NonNull View view) {
        return C0790k.m3458c(view);
    }

    public static int getImportantForContentCapture(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            return C0793n.m3488a(view);
        }
        return 0;
    }

    @Deprecated
    public static int getLabelFor(@NonNull View view) {
        return view.getLabelFor();
    }

    @Deprecated
    public static int getLayerType(View view) {
        return view.getLayerType();
    }

    @Deprecated
    public static int getLayoutDirection(@NonNull View view) {
        return view.getLayoutDirection();
    }

    @Nullable
    @Deprecated
    public static Matrix getMatrix(View view) {
        return view.getMatrix();
    }

    @Deprecated
    public static int getMeasuredHeightAndState(View view) {
        return view.getMeasuredHeightAndState();
    }

    @Deprecated
    public static int getMeasuredState(View view) {
        return view.getMeasuredState();
    }

    @Deprecated
    public static int getMeasuredWidthAndState(View view) {
        return view.getMeasuredWidthAndState();
    }

    @Deprecated
    public static int getMinimumHeight(@NonNull View view) {
        return view.getMinimumHeight();
    }

    @Deprecated
    public static int getMinimumWidth(@NonNull View view) {
        return view.getMinimumWidth();
    }

    public static int getNextClusterForwardId(@NonNull View view) {
        return C0790k.m3459d(view);
    }

    @Nullable
    public static String[] getOnReceiveContentMimeTypes(@NonNull View view) {
        return Build.VERSION.SDK_INT >= 31 ? C0794o.m3494a(view) : (String[]) view.getTag(C0512R.id.tag_on_receive_content_mime_types);
    }

    @Deprecated
    public static int getOverScrollMode(View view) {
        return view.getOverScrollMode();
    }

    @Px
    @Deprecated
    public static int getPaddingEnd(@NonNull View view) {
        return view.getPaddingEnd();
    }

    @Px
    @Deprecated
    public static int getPaddingStart(@NonNull View view) {
        return view.getPaddingStart();
    }

    @Nullable
    @Deprecated
    public static ViewParent getParentForAccessibility(@NonNull View view) {
        return view.getParentForAccessibility();
    }

    @Deprecated
    public static float getPivotX(View view) {
        return view.getPivotX();
    }

    @Deprecated
    public static float getPivotY(View view) {
        return view.getPivotY();
    }

    @Nullable
    public static WindowInsetsCompat getRootWindowInsets(@NonNull View view) {
        return C0788i.m3446a(view);
    }

    @Deprecated
    public static float getRotation(View view) {
        return view.getRotation();
    }

    @Deprecated
    public static float getRotationX(View view) {
        return view.getRotationX();
    }

    @Deprecated
    public static float getRotationY(View view) {
        return view.getRotationY();
    }

    @Deprecated
    public static float getScaleX(View view) {
        return view.getScaleX();
    }

    @Deprecated
    public static float getScaleY(View view) {
        return view.getScaleY();
    }

    public static int getScrollIndicators(@NonNull View view) {
        return C0788i.m3447b(view);
    }

    @Nullable
    @UiThread
    public static CharSequence getStateDescription(@NonNull View view) {
        return m3391v().m3415e(view);
    }

    @NonNull
    public static List<Rect> getSystemGestureExclusionRects(@NonNull View view) {
        return C0792m.m3484c(view);
    }

    @Nullable
    public static String getTransitionName(@NonNull View view) {
        return C0787h.m3430k(view);
    }

    @Deprecated
    public static float getTranslationX(View view) {
        return view.getTranslationX();
    }

    @Deprecated
    public static float getTranslationY(View view) {
        return view.getTranslationY();
    }

    public static float getTranslationZ(@NonNull View view) {
        return C0787h.m3431l(view);
    }

    @Nullable
    @Deprecated
    public static WindowInsetsControllerCompat getWindowInsetsController(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            return C0793n.m3490c(view);
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                Window window = ((Activity) context).getWindow();
                if (window != null) {
                    return WindowCompat.getInsetsController(window, view);
                }
                return null;
            }
        }
        return null;
    }

    @Deprecated
    public static int getWindowSystemUiVisibility(@NonNull View view) {
        return view.getWindowSystemUiVisibility();
    }

    @Deprecated
    public static float getX(View view) {
        return view.getX();
    }

    @Deprecated
    public static float getY(View view) {
        return view.getY();
    }

    public static float getZ(@NonNull View view) {
        return C0787h.m3432m(view);
    }

    @UiThread
    /* renamed from: h */
    public static boolean m3377h(View view, KeyEvent keyEvent) {
        return false;
    }

    public static boolean hasAccessibilityDelegate(@NonNull View view) {
        return m3379j(view) != null;
    }

    public static boolean hasExplicitFocusable(@NonNull View view) {
        return C0790k.m3460e(view);
    }

    public static boolean hasNestedScrollingParent(@NonNull View view) {
        return C0787h.m3433n(view);
    }

    @Deprecated
    public static boolean hasOnClickListeners(@NonNull View view) {
        return view.hasOnClickListeners();
    }

    @Deprecated
    public static boolean hasOverlappingRendering(@NonNull View view) {
        return view.hasOverlappingRendering();
    }

    @Deprecated
    public static boolean hasTransientState(@NonNull View view) {
        return view.hasTransientState();
    }

    /* renamed from: i */
    public static void m3378i(@NonNull View view) {
        AccessibilityDelegateCompat accessibilityDelegate = getAccessibilityDelegate(view);
        if (accessibilityDelegate == null) {
            accessibilityDelegate = new AccessibilityDelegateCompat();
        }
        setAccessibilityDelegate(view, accessibilityDelegate);
    }

    @UiThread
    public static boolean isAccessibilityHeading(@NonNull View view) {
        Boolean m3415e = m3371b().m3415e(view);
        return m3415e != null && m3415e.booleanValue();
    }

    @Deprecated
    public static boolean isAttachedToWindow(@NonNull View view) {
        return view.isAttachedToWindow();
    }

    public static boolean isFocusedByDefault(@NonNull View view) {
        return C0790k.m3461f(view);
    }

    public static boolean isImportantForAccessibility(@NonNull View view) {
        return C0787h.m3434o(view);
    }

    public static boolean isImportantForAutofill(@NonNull View view) {
        return C0790k.m3462g(view);
    }

    public static boolean isImportantForContentCapture(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            return C0793n.m3491d(view);
        }
        return false;
    }

    @Deprecated
    public static boolean isInLayout(@NonNull View view) {
        return view.isInLayout();
    }

    public static boolean isKeyboardNavigationCluster(@NonNull View view) {
        return C0790k.m3463h(view);
    }

    @Deprecated
    public static boolean isLaidOut(@NonNull View view) {
        return view.isLaidOut();
    }

    @Deprecated
    public static boolean isLayoutDirectionResolved(@NonNull View view) {
        return view.isLayoutDirectionResolved();
    }

    public static boolean isNestedScrollingEnabled(@NonNull View view) {
        return C0787h.m3435p(view);
    }

    @Deprecated
    public static boolean isOpaque(View view) {
        return view.isOpaque();
    }

    @Deprecated
    public static boolean isPaddingRelative(@NonNull View view) {
        return view.isPaddingRelative();
    }

    @UiThread
    public static boolean isScreenReaderFocusable(@NonNull View view) {
        Boolean m3415e = m3389t().m3415e(view);
        return m3415e != null && m3415e.booleanValue();
    }

    @Nullable
    /* renamed from: j */
    public static View.AccessibilityDelegate m3379j(@NonNull View view) {
        return C0792m.m3482a(view);
    }

    @Deprecated
    public static void jumpDrawablesToCurrentState(View view) {
        view.jumpDrawablesToCurrentState();
    }

    @Nullable
    /* renamed from: k */
    public static View.AccessibilityDelegate m3380k(@NonNull View view) {
        if (f5876i) {
            return null;
        }
        if (f5875h == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f5875h = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f5876i = true;
                return null;
            }
        }
        try {
            Object obj = f5875h.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f5876i = true;
            return null;
        }
    }

    @Nullable
    public static View keyboardNavigationClusterSearch(@NonNull View view, @Nullable View view2, int i) {
        return C0790k.m3464i(view, view2, i);
    }

    /* renamed from: l */
    public static List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> m3381l(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(C0512R.id.tag_accessibility_actions);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(C0512R.id.tag_accessibility_actions, arrayList2);
        return arrayList2;
    }

    /* renamed from: m */
    public static int m3382m(View view, @NonNull CharSequence charSequence) {
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> m3381l = m3381l(view);
        for (int i = 0; i < m3381l.size(); i++) {
            if (TextUtils.equals(charSequence, m3381l.get(i).getLabel())) {
                return m3381l.get(i).getId();
            }
        }
        int i2 = -1;
        int i3 = 0;
        while (true) {
            int[] iArr = f5878k;
            if (i3 >= iArr.length || i2 != -1) {
                break;
            }
            int i4 = iArr[i3];
            boolean z = true;
            for (int i5 = 0; i5 < m3381l.size(); i5++) {
                z &= m3381l.get(i5).getId() != i4;
            }
            if (z) {
                i2 = i4;
            }
            i3++;
        }
        return i2;
    }

    /* renamed from: n */
    public static Rect m3383n() {
        if (f5877j == null) {
            f5877j = new ThreadLocal<>();
        }
        Rect rect = f5877j.get();
        if (rect == null) {
            rect = new Rect();
            f5877j.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: o */
    public static OnReceiveContentViewBehavior m3384o(@NonNull View view) {
        return view instanceof OnReceiveContentViewBehavior ? (OnReceiveContentViewBehavior) view : f5879l;
    }

    public static void offsetLeftAndRight(@NonNull View view, int i) {
        view.offsetLeftAndRight(i);
    }

    public static void offsetTopAndBottom(@NonNull View view, int i) {
        view.offsetTopAndBottom(i);
    }

    @NonNull
    public static WindowInsetsCompat onApplyWindowInsets(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
        WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
        if (windowInsets != null) {
            WindowInsets m3418b = C0786g.m3418b(view, windowInsets);
            if (!m3418b.equals(windowInsets)) {
                return WindowInsetsCompat.toWindowInsetsCompat(m3418b, view);
            }
        }
        return windowInsetsCompat;
    }

    @Deprecated
    public static void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        view.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    @Deprecated
    public static void onInitializeAccessibilityNodeInfo(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        view.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat.unwrap());
    }

    @Deprecated
    public static void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        view.onPopulateAccessibilityEvent(accessibilityEvent);
    }

    /* renamed from: p */
    public static /* synthetic */ ContentInfoCompat m3385p(ContentInfoCompat contentInfoCompat) {
        return contentInfoCompat;
    }

    @Deprecated
    public static boolean performAccessibilityAction(@NonNull View view, int i, @Nullable Bundle bundle) {
        return view.performAccessibilityAction(i, bundle);
    }

    public static boolean performHapticFeedback(@NonNull View view, int i) {
        int m3326a = HapticFeedbackConstantsCompat.m3326a(i);
        if (m3326a == -1) {
            return false;
        }
        return view.performHapticFeedback(m3326a);
    }

    @Nullable
    public static ContentInfoCompat performReceiveContent(@NonNull View view, @NonNull ContentInfoCompat contentInfoCompat) {
        if (Log.isLoggable(f5868a, 3)) {
            Log.d(f5868a, "performReceiveContent: " + contentInfoCompat + ", view=" + view.getClass().getSimpleName() + IteratorUtils.f104923a + view.getId() + IteratorUtils.f104924b);
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return C0794o.m3495b(view, contentInfoCompat);
        }
        OnReceiveContentListener onReceiveContentListener = (OnReceiveContentListener) view.getTag(C0512R.id.tag_on_receive_content_listener);
        if (onReceiveContentListener == null) {
            return m3384o(view).onReceiveContent(contentInfoCompat);
        }
        ContentInfoCompat onReceiveContent = onReceiveContentListener.onReceiveContent(view, contentInfoCompat);
        if (onReceiveContent == null) {
            return null;
        }
        return m3384o(view).onReceiveContent(onReceiveContent);
    }

    @Deprecated
    public static void postInvalidateOnAnimation(@NonNull View view) {
        view.postInvalidateOnAnimation();
    }

    @Deprecated
    public static void postOnAnimation(@NonNull View view, @NonNull Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    @SuppressLint({"LambdaLast"})
    @Deprecated
    public static void postOnAnimationDelayed(@NonNull View view, @NonNull Runnable runnable, long j) {
        view.postOnAnimationDelayed(runnable, j);
    }

    /* renamed from: q */
    public static void m3386q(View view, int i) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z = getAccessibilityPaneTitle(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (view.getAccessibilityLiveRegion() != 0 || z) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z ? 32 : 2048);
                obtain.setContentChangeTypes(i);
                if (z) {
                    obtain.getText().add(getAccessibilityPaneTitle(view));
                    m3390u(view);
                }
                view.sendAccessibilityEventUnchecked(obtain);
                return;
            }
            if (i == 32) {
                AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
                view.onInitializeAccessibilityEvent(obtain2);
                obtain2.setEventType(32);
                obtain2.setContentChangeTypes(i);
                obtain2.setSource(view);
                view.onPopulateAccessibilityEvent(obtain2);
                obtain2.getText().add(getAccessibilityPaneTitle(view));
                accessibilityManager.sendAccessibilityEvent(obtain2);
                return;
            }
            if (view.getParent() != null) {
                try {
                    view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
                } catch (AbstractMethodError e) {
                    Log.e(f5868a, view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e);
                }
            }
        }
    }

    /* renamed from: r */
    public static AbstractC0785f<CharSequence> m3387r() {
        return new C0781b(C0512R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28);
    }

    public static void removeAccessibilityAction(@NonNull View view, int i) {
        m3388s(i, view);
        m3386q(view, 0);
    }

    public static void removeOnUnhandledKeyEventListener(@NonNull View view, @NonNull OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
        C0791l.m3476e(view, onUnhandledKeyEventListenerCompat);
    }

    public static void replaceAccessibilityAction(@NonNull View view, @NonNull AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, @Nullable CharSequence charSequence, @Nullable AccessibilityViewCommand accessibilityViewCommand) {
        if (accessibilityViewCommand == null && charSequence == null) {
            removeAccessibilityAction(view, accessibilityActionCompat.getId());
        } else {
            m3372c(view, accessibilityActionCompat.createReplacementAction(charSequence, accessibilityViewCommand));
        }
    }

    public static void requestApplyInsets(@NonNull View view) {
        C0786g.m3419c(view);
    }

    @NonNull
    public static <T extends View> T requireViewById(@NonNull View view, @IdRes int i) {
        return (T) C0791l.m3477f(view, i);
    }

    @Deprecated
    public static int resolveSizeAndState(int i, int i2, int i3) {
        return View.resolveSizeAndState(i, i2, i3);
    }

    public static boolean restoreDefaultFocus(@NonNull View view) {
        return C0790k.m3465j(view);
    }

    /* renamed from: s */
    public static void m3388s(int i, View view) {
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> m3381l = m3381l(view);
        for (int i2 = 0; i2 < m3381l.size(); i2++) {
            if (m3381l.get(i2).getId() == i) {
                m3381l.remove(i2);
                return;
            }
        }
    }

    public static void saveAttributeDataForStyleable(@NonNull View view, @NonNull @SuppressLint({"ContextFirst"}) Context context, @NonNull int[] iArr, @Nullable AttributeSet attributeSet, @NonNull TypedArray typedArray, int i, int i2) {
        C0792m.m3485d(view, context, iArr, attributeSet, typedArray, i, i2);
    }

    public static void setAccessibilityDelegate(@NonNull View view, @Nullable AccessibilityDelegateCompat accessibilityDelegateCompat) {
        if (accessibilityDelegateCompat == null && (m3379j(view) instanceof AccessibilityDelegateCompat.C0754a)) {
            accessibilityDelegateCompat = new AccessibilityDelegateCompat();
        }
        m3390u(view);
        view.setAccessibilityDelegate(accessibilityDelegateCompat == null ? null : accessibilityDelegateCompat.m3276b());
    }

    @UiThread
    public static void setAccessibilityHeading(@NonNull View view, boolean z) {
        m3371b().m3416f(view, Boolean.valueOf(z));
    }

    @Deprecated
    public static void setAccessibilityLiveRegion(@NonNull View view, int i) {
        view.setAccessibilityLiveRegion(i);
    }

    @UiThread
    public static void setAccessibilityPaneTitle(@NonNull View view, @Nullable CharSequence charSequence) {
        m3387r().m3416f(view, charSequence);
        if (charSequence != null) {
            f5880m.m3408a(view);
        } else {
            f5880m.m3411d(view);
        }
    }

    @Deprecated
    public static void setActivated(View view, boolean z) {
        view.setActivated(z);
    }

    @Deprecated
    public static void setAlpha(View view, @FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        view.setAlpha(f);
    }

    public static void setAutofillHints(@NonNull View view, @Nullable String... strArr) {
        C0790k.m3466k(view, strArr);
    }

    public static void setAutofillId(@NonNull View view, @Nullable AutofillIdCompat autofillIdCompat) {
        C0791l.m3480i(view, autofillIdCompat);
    }

    @Deprecated
    public static void setBackground(@NonNull View view, @Nullable Drawable drawable) {
        view.setBackground(drawable);
    }

    public static void setBackgroundTintList(@NonNull View view, @Nullable ColorStateList colorStateList) {
        C0787h.m3436q(view, colorStateList);
    }

    public static void setBackgroundTintMode(@NonNull View view, @Nullable PorterDuff.Mode mode) {
        C0787h.m3437r(view, mode);
    }

    @SuppressLint({"BanUncheckedReflection"})
    @Deprecated
    public static void setChildrenDrawingOrderEnabled(ViewGroup viewGroup, boolean z) {
        if (f5874g == null) {
            try {
                f5874g = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e) {
                Log.e(f5868a, "Unable to find childrenDrawingOrderEnabled", e);
            }
            f5874g.setAccessible(true);
        }
        try {
            f5874g.invoke(viewGroup, Boolean.valueOf(z));
        } catch (IllegalAccessException e2) {
            Log.e(f5868a, "Unable to invoke childrenDrawingOrderEnabled", e2);
        } catch (IllegalArgumentException e3) {
            Log.e(f5868a, "Unable to invoke childrenDrawingOrderEnabled", e3);
        } catch (InvocationTargetException e4) {
            Log.e(f5868a, "Unable to invoke childrenDrawingOrderEnabled", e4);
        }
    }

    @Deprecated
    public static void setClipBounds(@NonNull View view, @Nullable Rect rect) {
        view.setClipBounds(rect);
    }

    public static void setContentCaptureSession(@NonNull View view, @Nullable ContentCaptureSessionCompat contentCaptureSessionCompat) {
        C0792m.m3486e(view, contentCaptureSessionCompat);
    }

    public static void setElevation(@NonNull View view, float f) {
        C0787h.m3438s(view, f);
    }

    @Deprecated
    public static void setFitsSystemWindows(View view, boolean z) {
        view.setFitsSystemWindows(z);
    }

    public static void setFocusedByDefault(@NonNull View view, boolean z) {
        C0790k.m3467l(view, z);
    }

    @Deprecated
    public static void setHasTransientState(@NonNull View view, boolean z) {
        view.setHasTransientState(z);
    }

    @UiThread
    @Deprecated
    public static void setImportantForAccessibility(@NonNull View view, int i) {
        view.setImportantForAccessibility(i);
    }

    public static void setImportantForAutofill(@NonNull View view, int i) {
        C0790k.m3468m(view, i);
    }

    public static void setImportantForContentCapture(@NonNull View view, int i) {
        if (Build.VERSION.SDK_INT >= 30) {
            C0793n.m3492e(view, i);
        }
    }

    public static void setKeyboardNavigationCluster(@NonNull View view, boolean z) {
        C0790k.m3469n(view, z);
    }

    @Deprecated
    public static void setLabelFor(@NonNull View view, @IdRes int i) {
        view.setLabelFor(i);
    }

    @Deprecated
    public static void setLayerPaint(@NonNull View view, @Nullable Paint paint) {
        view.setLayerPaint(paint);
    }

    @Deprecated
    public static void setLayerType(View view, int i, Paint paint) {
        view.setLayerType(i, paint);
    }

    @Deprecated
    public static void setLayoutDirection(@NonNull View view, int i) {
        view.setLayoutDirection(i);
    }

    public static void setNestedScrollingEnabled(@NonNull View view, boolean z) {
        C0787h.m3439t(view, z);
    }

    public static void setNextClusterForwardId(@NonNull View view, int i) {
        C0790k.m3470o(view, i);
    }

    public static void setOnApplyWindowInsetsListener(@NonNull View view, @Nullable OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        C0787h.m3440u(view, onApplyWindowInsetsListener);
    }

    public static void setOnReceiveContentListener(@NonNull View view, @Nullable String[] strArr, @Nullable OnReceiveContentListener onReceiveContentListener) {
        if (Build.VERSION.SDK_INT >= 31) {
            C0794o.m3496c(view, strArr, onReceiveContentListener);
            return;
        }
        if (strArr == null || strArr.length == 0) {
            strArr = null;
        }
        boolean z = false;
        if (onReceiveContentListener != null) {
            Preconditions.checkArgument(strArr != null, "When the listener is set, MIME types must also be set");
        }
        if (strArr != null) {
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (strArr[i].startsWith("*")) {
                    z = true;
                    break;
                }
                i++;
            }
            Preconditions.checkArgument(!z, "A MIME type set here must not start with *: " + Arrays.toString(strArr));
        }
        view.setTag(C0512R.id.tag_on_receive_content_mime_types, strArr);
        view.setTag(C0512R.id.tag_on_receive_content_listener, onReceiveContentListener);
    }

    @Deprecated
    public static void setOverScrollMode(View view, int i) {
        view.setOverScrollMode(i);
    }

    @Deprecated
    public static void setPaddingRelative(@NonNull View view, @Px int i, @Px int i2, @Px int i3, @Px int i4) {
        view.setPaddingRelative(i, i2, i3, i4);
    }

    @Deprecated
    public static void setPivotX(View view, float f) {
        view.setPivotX(f);
    }

    @Deprecated
    public static void setPivotY(View view, float f) {
        view.setPivotY(f);
    }

    public static void setPointerIcon(@NonNull View view, @Nullable PointerIconCompat pointerIconCompat) {
        C0789j.m3453d(view, (PointerIcon) (pointerIconCompat != null ? pointerIconCompat.getPointerIcon() : null));
    }

    @Deprecated
    public static void setRotation(View view, float f) {
        view.setRotation(f);
    }

    @Deprecated
    public static void setRotationX(View view, float f) {
        view.setRotationX(f);
    }

    @Deprecated
    public static void setRotationY(View view, float f) {
        view.setRotationY(f);
    }

    @Deprecated
    public static void setSaveFromParentEnabled(View view, boolean z) {
        view.setSaveFromParentEnabled(z);
    }

    @Deprecated
    public static void setScaleX(View view, float f) {
        view.setScaleX(f);
    }

    @Deprecated
    public static void setScaleY(View view, float f) {
        view.setScaleY(f);
    }

    @UiThread
    public static void setScreenReaderFocusable(@NonNull View view, boolean z) {
        m3389t().m3416f(view, Boolean.valueOf(z));
    }

    public static void setScrollIndicators(@NonNull View view, int i) {
        C0788i.m3448c(view, i);
    }

    @UiThread
    public static void setStateDescription(@NonNull View view, @Nullable CharSequence charSequence) {
        m3391v().m3416f(view, charSequence);
    }

    public static void setSystemGestureExclusionRects(@NonNull View view, @NonNull List<Rect> list) {
        C0792m.m3487f(view, list);
    }

    public static void setTooltipText(@NonNull View view, @Nullable CharSequence charSequence) {
        C0790k.m3471p(view, charSequence);
    }

    public static void setTransitionName(@NonNull View view, @Nullable String str) {
        C0787h.m3441v(view, str);
    }

    @Deprecated
    public static void setTranslationX(View view, float f) {
        view.setTranslationX(f);
    }

    @Deprecated
    public static void setTranslationY(View view, float f) {
        view.setTranslationY(f);
    }

    public static void setTranslationZ(@NonNull View view, float f) {
        C0787h.m3442w(view, f);
    }

    public static void setWindowInsetsAnimationCallback(@NonNull View view, @Nullable WindowInsetsAnimationCompat.Callback callback) {
        WindowInsetsAnimationCompat.m3548a(view, callback);
    }

    @Deprecated
    public static void setX(View view, float f) {
        view.setX(f);
    }

    @Deprecated
    public static void setY(View view, float f) {
        view.setY(f);
    }

    public static void setZ(@NonNull View view, float f) {
        C0787h.m3443x(view, f);
    }

    public static boolean startDragAndDrop(@NonNull View view, @Nullable ClipData clipData, @NonNull View.DragShadowBuilder dragShadowBuilder, @Nullable Object obj, int i) {
        return C0789j.m3454e(view, clipData, dragShadowBuilder, obj, i);
    }

    public static boolean startNestedScroll(@NonNull View view, int i) {
        return C0787h.m3444y(view, i);
    }

    public static void stopNestedScroll(@NonNull View view) {
        C0787h.m3445z(view);
    }

    /* renamed from: t */
    public static AbstractC0785f<Boolean> m3389t() {
        return new C0780a(C0512R.id.tag_screen_reader_focusable, Boolean.class, 28);
    }

    /* renamed from: u */
    public static void m3390u(View view) {
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
    }

    public static void updateDragShadow(@NonNull View view, @NonNull View.DragShadowBuilder dragShadowBuilder) {
        C0789j.m3455f(view, dragShadowBuilder);
    }

    /* renamed from: v */
    public static AbstractC0785f<CharSequence> m3391v() {
        return new C0782c(C0512R.id.tag_state_description, CharSequence.class, 64, 30);
    }

    /* renamed from: w */
    public static void m3392w(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean dispatchNestedPreScroll(@NonNull View view, int i, int i2, @Nullable int[] iArr, @Nullable int[] iArr2, int i3) {
        if (view instanceof NestedScrollingChild2) {
            return ((NestedScrollingChild2) view).dispatchNestedPreScroll(i, i2, iArr, iArr2, i3);
        }
        if (i3 == 0) {
            return dispatchNestedPreScroll(view, i, i2, iArr, iArr2);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void dispatchNestedScroll(@NonNull View view, int i, int i2, int i3, int i4, @Nullable int[] iArr, int i5, @NonNull int[] iArr2) {
        if (view instanceof NestedScrollingChild3) {
            ((NestedScrollingChild3) view).dispatchNestedScroll(i, i2, i3, i4, iArr, i5, iArr2);
        } else {
            dispatchNestedScroll(view, i, i2, i3, i4, iArr, i5);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean hasNestedScrollingParent(@NonNull View view, int i) {
        if (view instanceof NestedScrollingChild2) {
            ((NestedScrollingChild2) view).hasNestedScrollingParent(i);
            return false;
        }
        if (i == 0) {
            return hasNestedScrollingParent(view);
        }
        return false;
    }

    @Deprecated
    public static void postInvalidateOnAnimation(@NonNull View view, int i, int i2, int i3, int i4) {
        view.postInvalidateOnAnimation(i, i2, i3, i4);
    }

    public static void setScrollIndicators(@NonNull View view, int i, int i2) {
        C0788i.m3449d(view, i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean startNestedScroll(@NonNull View view, int i, int i2) {
        if (view instanceof NestedScrollingChild2) {
            return ((NestedScrollingChild2) view).startNestedScroll(i, i2);
        }
        if (i2 == 0) {
            return startNestedScroll(view, i);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void stopNestedScroll(@NonNull View view, int i) {
        if (view instanceof NestedScrollingChild2) {
            ((NestedScrollingChild2) view).stopNestedScroll(i);
        } else if (i == 0) {
            stopNestedScroll(view);
        }
    }

    public static boolean performHapticFeedback(@NonNull View view, int i, int i2) {
        int m3326a = HapticFeedbackConstantsCompat.m3326a(i);
        if (m3326a == -1) {
            return false;
        }
        return view.performHapticFeedback(m3326a, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean dispatchNestedScroll(@NonNull View view, int i, int i2, int i3, int i4, @Nullable int[] iArr, int i5) {
        if (view instanceof NestedScrollingChild2) {
            return ((NestedScrollingChild2) view).dispatchNestedScroll(i, i2, i3, i4, iArr, i5);
        }
        if (i5 == 0) {
            return dispatchNestedScroll(view, i, i2, i3, i4, iArr);
        }
        return false;
    }
}
