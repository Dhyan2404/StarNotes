package androidx.core.view.accessibility;

import android.graphics.Rect;
import android.graphics.Region;
import android.os.Build;
import android.os.LocaleList;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.os.LocaleListCompat;

/* loaded from: classes3.dex */
public class AccessibilityWindowInfoCompat {
    public static final int TYPE_ACCESSIBILITY_OVERLAY = 4;
    public static final int TYPE_APPLICATION = 1;
    public static final int TYPE_INPUT_METHOD = 2;
    public static final int TYPE_MAGNIFICATION_OVERLAY = 6;
    public static final int TYPE_SPLIT_SCREEN_DIVIDER = 5;
    public static final int TYPE_SYSTEM = 3;

    /* renamed from: b */
    public static final int f6066b = -1;

    /* renamed from: a */
    public final Object f6067a;

    @RequiresApi(21)
    /* renamed from: androidx.core.view.accessibility.AccessibilityWindowInfoCompat$a */
    /* loaded from: classes3.dex */
    public static class C0840a {
        @DoNotInline
        /* renamed from: a */
        public static void m3698a(AccessibilityWindowInfo accessibilityWindowInfo, Rect rect) {
            accessibilityWindowInfo.getBoundsInScreen(rect);
        }

        @DoNotInline
        /* renamed from: b */
        public static AccessibilityWindowInfo m3699b(AccessibilityWindowInfo accessibilityWindowInfo, int i) {
            return accessibilityWindowInfo.getChild(i);
        }

        @DoNotInline
        /* renamed from: c */
        public static int m3700c(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getChildCount();
        }

        @DoNotInline
        /* renamed from: d */
        public static int m3701d(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getId();
        }

        @DoNotInline
        /* renamed from: e */
        public static int m3702e(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getLayer();
        }

        @DoNotInline
        /* renamed from: f */
        public static AccessibilityWindowInfo m3703f(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getParent();
        }

        @DoNotInline
        /* renamed from: g */
        public static AccessibilityNodeInfo m3704g(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getRoot();
        }

        @DoNotInline
        /* renamed from: h */
        public static int m3705h(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getType();
        }

        @DoNotInline
        /* renamed from: i */
        public static boolean m3706i(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isAccessibilityFocused();
        }

        @DoNotInline
        /* renamed from: j */
        public static boolean m3707j(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isActive();
        }

        @DoNotInline
        /* renamed from: k */
        public static boolean m3708k(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isFocused();
        }

        @DoNotInline
        /* renamed from: l */
        public static AccessibilityWindowInfo m3709l() {
            return AccessibilityWindowInfo.obtain();
        }

        @DoNotInline
        /* renamed from: m */
        public static AccessibilityWindowInfo m3710m(AccessibilityWindowInfo accessibilityWindowInfo) {
            return AccessibilityWindowInfo.obtain(accessibilityWindowInfo);
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.view.accessibility.AccessibilityWindowInfoCompat$b */
    /* loaded from: classes3.dex */
    public static class C0841b {
        @DoNotInline
        /* renamed from: a */
        public static AccessibilityNodeInfo m3711a(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getAnchor();
        }

        @DoNotInline
        /* renamed from: b */
        public static CharSequence m3712b(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getTitle();
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.view.accessibility.AccessibilityWindowInfoCompat$c */
    /* loaded from: classes3.dex */
    public static class C0842c {
        @DoNotInline
        /* renamed from: a */
        public static boolean m3713a(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isInPictureInPictureMode();
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.view.accessibility.AccessibilityWindowInfoCompat$d */
    /* loaded from: classes3.dex */
    public static class C0843d {
        @DoNotInline
        /* renamed from: a */
        public static AccessibilityWindowInfo m3714a() {
            return new AccessibilityWindowInfo();
        }
    }

    @RequiresApi(33)
    /* renamed from: androidx.core.view.accessibility.AccessibilityWindowInfoCompat$e */
    /* loaded from: classes3.dex */
    public static class C0844e {
        @DoNotInline
        /* renamed from: a */
        public static int m3715a(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getDisplayId();
        }

        @DoNotInline
        /* renamed from: b */
        public static void m3716b(AccessibilityWindowInfo accessibilityWindowInfo, Region region) {
            accessibilityWindowInfo.getRegionInScreen(region);
        }

        @DoNotInline
        /* renamed from: c */
        public static AccessibilityNodeInfoCompat m3717c(Object obj, int i) {
            return AccessibilityNodeInfoCompat.m3659l(((AccessibilityWindowInfo) obj).getRoot(i));
        }
    }

    @RequiresApi(34)
    /* renamed from: androidx.core.view.accessibility.AccessibilityWindowInfoCompat$f */
    /* loaded from: classes3.dex */
    public static class C0845f {
        @DoNotInline
        /* renamed from: a */
        public static LocaleList m3718a(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getLocales();
        }

        @DoNotInline
        /* renamed from: b */
        public static long m3719b(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getTransitionTimeMillis();
        }
    }

    public AccessibilityWindowInfoCompat() {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f6067a = C0843d.m3714a();
        } else {
            this.f6067a = null;
        }
    }

    /* renamed from: a */
    public static String m3696a(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "<UNKNOWN>" : "TYPE_ACCESSIBILITY_OVERLAY" : "TYPE_SYSTEM" : "TYPE_INPUT_METHOD" : "TYPE_APPLICATION";
    }

    /* renamed from: b */
    public static AccessibilityWindowInfoCompat m3697b(Object obj) {
        if (obj != null) {
            return new AccessibilityWindowInfoCompat(obj);
        }
        return null;
    }

    @Nullable
    public static AccessibilityWindowInfoCompat obtain() {
        return m3697b(C0840a.m3709l());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AccessibilityWindowInfoCompat)) {
            return false;
        }
        AccessibilityWindowInfoCompat accessibilityWindowInfoCompat = (AccessibilityWindowInfoCompat) obj;
        Object obj2 = this.f6067a;
        return obj2 == null ? accessibilityWindowInfoCompat.f6067a == null : obj2.equals(accessibilityWindowInfoCompat.f6067a);
    }

    @Nullable
    public AccessibilityNodeInfoCompat getAnchor() {
        return AccessibilityNodeInfoCompat.m3659l(C0841b.m3711a((AccessibilityWindowInfo) this.f6067a));
    }

    public void getBoundsInScreen(@NonNull Rect rect) {
        C0840a.m3698a((AccessibilityWindowInfo) this.f6067a, rect);
    }

    @Nullable
    public AccessibilityWindowInfoCompat getChild(int i) {
        return m3697b(C0840a.m3699b((AccessibilityWindowInfo) this.f6067a, i));
    }

    public int getChildCount() {
        return C0840a.m3700c((AccessibilityWindowInfo) this.f6067a);
    }

    public int getDisplayId() {
        if (Build.VERSION.SDK_INT >= 33) {
            return C0844e.m3715a((AccessibilityWindowInfo) this.f6067a);
        }
        return 0;
    }

    public int getId() {
        return C0840a.m3701d((AccessibilityWindowInfo) this.f6067a);
    }

    public int getLayer() {
        return C0840a.m3702e((AccessibilityWindowInfo) this.f6067a);
    }

    @NonNull
    public LocaleListCompat getLocales() {
        return Build.VERSION.SDK_INT >= 34 ? LocaleListCompat.wrap(C0845f.m3718a((AccessibilityWindowInfo) this.f6067a)) : LocaleListCompat.getEmptyLocaleList();
    }

    @Nullable
    public AccessibilityWindowInfoCompat getParent() {
        return m3697b(C0840a.m3703f((AccessibilityWindowInfo) this.f6067a));
    }

    public void getRegionInScreen(@NonNull Region region) {
        if (Build.VERSION.SDK_INT >= 33) {
            C0844e.m3716b((AccessibilityWindowInfo) this.f6067a, region);
            return;
        }
        Rect rect = new Rect();
        C0840a.m3698a((AccessibilityWindowInfo) this.f6067a, rect);
        region.set(rect);
    }

    @Nullable
    public AccessibilityNodeInfoCompat getRoot() {
        return AccessibilityNodeInfoCompat.m3659l(C0840a.m3704g((AccessibilityWindowInfo) this.f6067a));
    }

    @Nullable
    public CharSequence getTitle() {
        return C0841b.m3712b((AccessibilityWindowInfo) this.f6067a);
    }

    public long getTransitionTimeMillis() {
        if (Build.VERSION.SDK_INT >= 34) {
            return C0845f.m3719b((AccessibilityWindowInfo) this.f6067a);
        }
        return 0L;
    }

    public int getType() {
        return C0840a.m3705h((AccessibilityWindowInfo) this.f6067a);
    }

    public int hashCode() {
        Object obj = this.f6067a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public boolean isAccessibilityFocused() {
        return C0840a.m3706i((AccessibilityWindowInfo) this.f6067a);
    }

    public boolean isActive() {
        return C0840a.m3707j((AccessibilityWindowInfo) this.f6067a);
    }

    public boolean isFocused() {
        return C0840a.m3708k((AccessibilityWindowInfo) this.f6067a);
    }

    public boolean isInPictureInPictureMode() {
        return C0842c.m3713a((AccessibilityWindowInfo) this.f6067a);
    }

    @Deprecated
    public void recycle() {
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        Rect rect = new Rect();
        getBoundsInScreen(rect);
        sb.append("AccessibilityWindowInfo[");
        sb.append("id=");
        sb.append(getId());
        sb.append(", type=");
        sb.append(m3696a(getType()));
        sb.append(", layer=");
        sb.append(getLayer());
        sb.append(", bounds=");
        sb.append(rect);
        sb.append(", focused=");
        sb.append(isFocused());
        sb.append(", active=");
        sb.append(isActive());
        sb.append(", hasParent=");
        sb.append(getParent() != null);
        sb.append(", hasChildren=");
        sb.append(getChildCount() > 0);
        sb.append(", transitionTime=");
        sb.append(getTransitionTimeMillis());
        sb.append(", locales=");
        sb.append(getLocales());
        sb.append(']');
        return sb.toString();
    }

    @Nullable
    public AccessibilityWindowInfo unwrap() {
        return (AccessibilityWindowInfo) this.f6067a;
    }

    @Nullable
    public static AccessibilityWindowInfoCompat obtain(@Nullable AccessibilityWindowInfoCompat accessibilityWindowInfoCompat) {
        if (accessibilityWindowInfoCompat == null) {
            return null;
        }
        return m3697b(C0840a.m3710m((AccessibilityWindowInfo) accessibilityWindowInfoCompat.f6067a));
    }

    @Nullable
    public AccessibilityNodeInfoCompat getRoot(int i) {
        if (Build.VERSION.SDK_INT >= 33) {
            return C0844e.m3717c(this.f6067a, i);
        }
        return getRoot();
    }

    public AccessibilityWindowInfoCompat(Object obj) {
        this.f6067a = obj;
    }
}
