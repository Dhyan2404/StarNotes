package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C5139R;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.internal.ParcelableSparseArray;
import com.google.android.material.internal.ToolbarUtils;

@ExperimentalBadgeUtils
/* loaded from: classes6.dex */
public class BadgeUtils {
    public static final boolean USE_COMPAT_PARENT = false;

    /* renamed from: a */
    public static final String f30327a = "BadgeUtils";

    /* renamed from: com.google.android.material.badge.BadgeUtils$a */
    /* loaded from: classes6.dex */
    public class RunnableC5149a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Toolbar f30328e;

        /* renamed from: f */
        public final /* synthetic */ int f30329f;

        /* renamed from: g */
        public final /* synthetic */ BadgeDrawable f30330g;

        /* renamed from: h */
        public final /* synthetic */ FrameLayout f30331h;

        public RunnableC5149a(Toolbar toolbar, int i, BadgeDrawable badgeDrawable, FrameLayout frameLayout) {
            this.f30328e = toolbar;
            this.f30329f = i;
            this.f30330g = badgeDrawable;
            this.f30331h = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionMenuItemView actionMenuItemView = ToolbarUtils.getActionMenuItemView(this.f30328e, this.f30329f);
            if (actionMenuItemView != null) {
                BadgeUtils.m23057e(this.f30330g, this.f30328e.getResources());
                BadgeUtils.attachBadgeDrawable(this.f30330g, actionMenuItemView, this.f30331h);
                BadgeUtils.m23054b(this.f30330g, actionMenuItemView);
            }
        }
    }

    /* renamed from: com.google.android.material.badge.BadgeUtils$b */
    /* loaded from: classes6.dex */
    public class C5150b extends AccessibilityDelegateCompat {

        /* renamed from: d */
        public final /* synthetic */ BadgeDrawable f30332d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5150b(View.AccessibilityDelegate accessibilityDelegate, BadgeDrawable badgeDrawable) {
            super(accessibilityDelegate);
            this.f30332d = badgeDrawable;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(this.f30332d.getContentDescription());
        }
    }

    /* renamed from: com.google.android.material.badge.BadgeUtils$c */
    /* loaded from: classes6.dex */
    public class C5151c extends AccessibilityDelegateCompat {

        /* renamed from: d */
        public final /* synthetic */ BadgeDrawable f30333d;

        public C5151c(BadgeDrawable badgeDrawable) {
            this.f30333d = badgeDrawable;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(this.f30333d.getContentDescription());
        }
    }

    /* renamed from: com.google.android.material.badge.BadgeUtils$d */
    /* loaded from: classes6.dex */
    public class C5152d extends AccessibilityDelegateCompat {
        public C5152d(View.AccessibilityDelegate accessibilityDelegate) {
            super(accessibilityDelegate);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(null);
        }
    }

    public static void attachBadgeDrawable(@NonNull BadgeDrawable badgeDrawable, @NonNull View view) {
        attachBadgeDrawable(badgeDrawable, view, (FrameLayout) null);
    }

    /* renamed from: b */
    public static void m23054b(@NonNull BadgeDrawable badgeDrawable, @NonNull View view) {
        if (ViewCompat.hasAccessibilityDelegate(view)) {
            ViewCompat.setAccessibilityDelegate(view, new C5150b(view.getAccessibilityDelegate(), badgeDrawable));
        } else {
            ViewCompat.setAccessibilityDelegate(view, new C5151c(badgeDrawable));
        }
    }

    /* renamed from: c */
    public static void m23055c(@NonNull View view) {
        if (ViewCompat.hasAccessibilityDelegate(view)) {
            ViewCompat.setAccessibilityDelegate(view, new C5152d(view.getAccessibilityDelegate()));
        } else {
            ViewCompat.setAccessibilityDelegate(view, null);
        }
    }

    @NonNull
    public static SparseArray<BadgeDrawable> createBadgeDrawablesFromSavedStates(Context context, @NonNull ParcelableSparseArray parcelableSparseArray) {
        SparseArray<BadgeDrawable> sparseArray = new SparseArray<>(parcelableSparseArray.size());
        for (int i = 0; i < parcelableSparseArray.size(); i++) {
            int keyAt = parcelableSparseArray.keyAt(i);
            BadgeState.State state = (BadgeState.State) parcelableSparseArray.valueAt(i);
            sparseArray.put(keyAt, state != null ? BadgeDrawable.m22948c(context, state) : null);
        }
        return sparseArray;
    }

    @NonNull
    public static ParcelableSparseArray createParcelableBadgeStates(@NonNull SparseArray<BadgeDrawable> sparseArray) {
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i = 0; i < sparseArray.size(); i++) {
            int keyAt = sparseArray.keyAt(i);
            BadgeDrawable valueAt = sparseArray.valueAt(i);
            parcelableSparseArray.put(keyAt, valueAt != null ? valueAt.m22973n() : null);
        }
        return parcelableSparseArray;
    }

    @VisibleForTesting
    /* renamed from: d */
    public static void m23056d(BadgeDrawable badgeDrawable) {
        badgeDrawable.m22956H(0);
        badgeDrawable.m22957I(0);
    }

    public static void detachBadgeDrawable(@Nullable BadgeDrawable badgeDrawable, @NonNull View view) {
        if (badgeDrawable == null) {
            return;
        }
        if (!USE_COMPAT_PARENT && badgeDrawable.getCustomBadgeParent() == null) {
            view.getOverlay().remove(badgeDrawable);
        } else {
            badgeDrawable.getCustomBadgeParent().setForeground(null);
        }
    }

    @VisibleForTesting
    /* renamed from: e */
    public static void m23057e(BadgeDrawable badgeDrawable, Resources resources) {
        badgeDrawable.m22956H(resources.getDimensionPixelOffset(C5139R.dimen.mtrl_badge_toolbar_action_menu_item_horizontal_offset));
        badgeDrawable.m22957I(resources.getDimensionPixelOffset(C5139R.dimen.mtrl_badge_toolbar_action_menu_item_vertical_offset));
    }

    public static void setBadgeDrawableBounds(@NonNull BadgeDrawable badgeDrawable, @NonNull View view, @Nullable FrameLayout frameLayout) {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        badgeDrawable.setBounds(rect);
        badgeDrawable.updateBadgeCoordinates(view, frameLayout);
    }

    public static void updateBadgeBounds(@NonNull Rect rect, float f, float f2, float f3, float f4) {
        rect.set((int) (f - f3), (int) (f2 - f4), (int) (f + f3), (int) (f2 + f4));
    }

    public static void attachBadgeDrawable(@NonNull BadgeDrawable badgeDrawable, @NonNull View view, @Nullable FrameLayout frameLayout) {
        setBadgeDrawableBounds(badgeDrawable, view, frameLayout);
        if (badgeDrawable.getCustomBadgeParent() != null) {
            badgeDrawable.getCustomBadgeParent().setForeground(badgeDrawable);
        } else {
            if (!USE_COMPAT_PARENT) {
                view.getOverlay().add(badgeDrawable);
                return;
            }
            throw new IllegalArgumentException("Trying to reference null customBadgeParent");
        }
    }

    public static void detachBadgeDrawable(@Nullable BadgeDrawable badgeDrawable, @NonNull Toolbar toolbar, @IdRes int i) {
        if (badgeDrawable == null) {
            return;
        }
        ActionMenuItemView actionMenuItemView = ToolbarUtils.getActionMenuItemView(toolbar, i);
        if (actionMenuItemView != null) {
            m23056d(badgeDrawable);
            detachBadgeDrawable(badgeDrawable, actionMenuItemView);
            m23055c(actionMenuItemView);
        } else {
            Log.w(f30327a, "Trying to remove badge from a null menuItemView: " + i);
        }
    }

    public static void attachBadgeDrawable(@NonNull BadgeDrawable badgeDrawable, @NonNull Toolbar toolbar, @IdRes int i) {
        attachBadgeDrawable(badgeDrawable, toolbar, i, null);
    }

    public static void attachBadgeDrawable(@NonNull BadgeDrawable badgeDrawable, @NonNull Toolbar toolbar, @IdRes int i, @Nullable FrameLayout frameLayout) {
        toolbar.post(new RunnableC5149a(toolbar, i, badgeDrawable, frameLayout));
    }
}
