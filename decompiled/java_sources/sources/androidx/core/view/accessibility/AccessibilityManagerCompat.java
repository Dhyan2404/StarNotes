package androidx.core.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.os.Build;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.List;

/* loaded from: classes3.dex */
public final class AccessibilityManagerCompat {

    @Deprecated
    /* loaded from: classes3.dex */
    public interface AccessibilityStateChangeListener {
        @Deprecated
        void onAccessibilityStateChanged(boolean z);
    }

    @Deprecated
    /* loaded from: classes3.dex */
    public static abstract class AccessibilityStateChangeListenerCompat implements AccessibilityStateChangeListener {
    }

    /* loaded from: classes3.dex */
    public interface TouchExplorationStateChangeListener {
        void onTouchExplorationStateChanged(boolean z);
    }

    /* renamed from: androidx.core.view.accessibility.AccessibilityManagerCompat$a */
    /* loaded from: classes3.dex */
    public static class AccessibilityManagerAccessibilityStateChangeListenerC0831a implements AccessibilityManager.AccessibilityStateChangeListener {

        /* renamed from: e */
        public AccessibilityStateChangeListener f6018e;

        public AccessibilityManagerAccessibilityStateChangeListenerC0831a(@NonNull AccessibilityStateChangeListener accessibilityStateChangeListener) {
            this.f6018e = accessibilityStateChangeListener;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof AccessibilityManagerAccessibilityStateChangeListenerC0831a) {
                return this.f6018e.equals(((AccessibilityManagerAccessibilityStateChangeListenerC0831a) obj).f6018e);
            }
            return false;
        }

        public int hashCode() {
            return this.f6018e.hashCode();
        }

        @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
        public void onAccessibilityStateChanged(boolean z) {
            this.f6018e.onAccessibilityStateChanged(z);
        }
    }

    @RequiresApi(34)
    /* renamed from: androidx.core.view.accessibility.AccessibilityManagerCompat$b */
    /* loaded from: classes3.dex */
    public static class C0832b {
        @DoNotInline
        /* renamed from: a */
        public static boolean m3657a(AccessibilityManager accessibilityManager) {
            return accessibilityManager.isRequestFromAccessibilityTool();
        }
    }

    /* renamed from: androidx.core.view.accessibility.AccessibilityManagerCompat$c */
    /* loaded from: classes3.dex */
    public static final class AccessibilityManagerTouchExplorationStateChangeListenerC0833c implements AccessibilityManager.TouchExplorationStateChangeListener {

        /* renamed from: a */
        public final TouchExplorationStateChangeListener f6019a;

        public AccessibilityManagerTouchExplorationStateChangeListenerC0833c(@NonNull TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
            this.f6019a = touchExplorationStateChangeListener;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof AccessibilityManagerTouchExplorationStateChangeListenerC0833c) {
                return this.f6019a.equals(((AccessibilityManagerTouchExplorationStateChangeListenerC0833c) obj).f6019a);
            }
            return false;
        }

        public int hashCode() {
            return this.f6019a.hashCode();
        }

        @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
        public void onTouchExplorationStateChanged(boolean z) {
            this.f6019a.onTouchExplorationStateChanged(z);
        }
    }

    @Deprecated
    public static boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListener accessibilityStateChangeListener) {
        if (accessibilityStateChangeListener == null) {
            return false;
        }
        return accessibilityManager.addAccessibilityStateChangeListener(new AccessibilityManagerAccessibilityStateChangeListenerC0831a(accessibilityStateChangeListener));
    }

    public static boolean addTouchExplorationStateChangeListener(@NonNull AccessibilityManager accessibilityManager, @NonNull TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
        return accessibilityManager.addTouchExplorationStateChangeListener(new AccessibilityManagerTouchExplorationStateChangeListenerC0833c(touchExplorationStateChangeListener));
    }

    @Deprecated
    public static List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int i) {
        return accessibilityManager.getEnabledAccessibilityServiceList(i);
    }

    @Deprecated
    public static List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager) {
        return accessibilityManager.getInstalledAccessibilityServiceList();
    }

    public static boolean isRequestFromAccessibilityTool(@NonNull AccessibilityManager accessibilityManager) {
        if (Build.VERSION.SDK_INT >= 34) {
            return C0832b.m3657a(accessibilityManager);
        }
        return true;
    }

    @Deprecated
    public static boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager) {
        return accessibilityManager.isTouchExplorationEnabled();
    }

    @Deprecated
    public static boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListener accessibilityStateChangeListener) {
        if (accessibilityStateChangeListener == null) {
            return false;
        }
        return accessibilityManager.removeAccessibilityStateChangeListener(new AccessibilityManagerAccessibilityStateChangeListenerC0831a(accessibilityStateChangeListener));
    }

    public static boolean removeTouchExplorationStateChangeListener(@NonNull AccessibilityManager accessibilityManager, @NonNull TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
        return accessibilityManager.removeTouchExplorationStateChangeListener(new AccessibilityManagerTouchExplorationStateChangeListenerC0833c(touchExplorationStateChangeListener));
    }
}
